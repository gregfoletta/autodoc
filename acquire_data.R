library(tibble)
library(dplyr)
library(readr)
library(httr2)
library(glue)
library(rjsonpath)

api_key <- Sys.getenv('FMG_API_KEY')

fmg_api_call <- function(uri, key, params = list(), method = 'get', id = 1, verbosity = 0) {
    request(uri) |>
        req_url_path('/jsonrpc') |> 
        #req_options(ssl_verifypeer = 0, ssl_verifyhost = 0) |> 
        req_url_query(access_token = key) |>
        req_body_json(list(id = id, method = method, params = params)) |>
        req_perform(verbosity = verbosity)
}

# Get device information
dvmdb <- fmg_api_call('https://fmg.e.foletta.xyz', api_key, list(list(url = "/dvmdb/device")), verbosity = 3) |>
    resp_body_json()

tibble(
    hostname = dvmdb |> json_path("$..hostname"),
    serial = dvmdb |> json_path("$.result[0].data[*].sn"),
    version = dvmdb |> json_path("$..version"),
    platform = dvmdb |> json_path("$..platform_str")
) |>
    write_csv('./data/dvmdb.csv')


# Get the interface info
interface_param <- list(
    list(
        url = '/sys/proxy/json',
        data = list(
            action = 'get',
            resource = '/api/v2/cmdb/system/interface',
            target = list('/adom/cust0001/group/All_FortiGate') 
        )
    )
)

interfaces <- fmg_api_call('https://fmg.e.foletta.xyz', api_key, interface_param, method = 'exec', verbosity = 3) |>
    resp_body_json()


full_interfaces <- tibble()
for (dev in interfaces |> json_path('$.result[0].data')) {
    i <- tibble()
    device <- dev |> json_path('$..target')
    if (dev$status$code == 0) {
        i <- tibble(
            device = device,
            name = dev |> json_path('$.response.results[*].name'),
            ip = dev |> json_path('$.response.results[*].ip')
        )
    }
    full_interfaces <- bind_rows(full_interfaces, i)
}

full_interfaces |> write_csv('./data/interfaces.csv')
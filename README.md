
``` r
library(tidyverse)
```

    ## ── Attaching core tidyverse packages ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse 2.0.0 ──
    ## ✔ dplyr     1.1.4     ✔ readr     2.1.5
    ## ✔ forcats   1.0.0     ✔ stringr   1.5.1
    ## ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
    ## ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
    ## ✔ purrr     1.0.2     
    ## ── Conflicts ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()
    ## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors

``` r
library(gt)
```

# Documentation

``` r
read_csv('./data/dvmdb.csv') |>
    gt()
```

    ## Rows: 5 Columns: 4
    ## ── Column specification ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ## Delimiter: ","
    ## chr (3): hostname, serial, platform
    ## dbl (1): version
    ## 
    ## ℹ Use `spec()` to retrieve the full column specification for this data.
    ## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

<div id="eixdyfmsme" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#eixdyfmsme table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#eixdyfmsme thead, #eixdyfmsme tbody, #eixdyfmsme tfoot, #eixdyfmsme tr, #eixdyfmsme td, #eixdyfmsme th {
  border-style: none;
}

#eixdyfmsme p {
  margin: 0;
  padding: 0;
}

#eixdyfmsme .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#eixdyfmsme .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#eixdyfmsme .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#eixdyfmsme .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#eixdyfmsme .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eixdyfmsme .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eixdyfmsme .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#eixdyfmsme .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#eixdyfmsme .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#eixdyfmsme .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#eixdyfmsme .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#eixdyfmsme .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#eixdyfmsme .gt_spanner_row {
  border-bottom-style: hidden;
}

#eixdyfmsme .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#eixdyfmsme .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#eixdyfmsme .gt_from_md > :first-child {
  margin-top: 0;
}

#eixdyfmsme .gt_from_md > :last-child {
  margin-bottom: 0;
}

#eixdyfmsme .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#eixdyfmsme .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#eixdyfmsme .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#eixdyfmsme .gt_row_group_first td {
  border-top-width: 2px;
}

#eixdyfmsme .gt_row_group_first th {
  border-top-width: 2px;
}

#eixdyfmsme .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eixdyfmsme .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#eixdyfmsme .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#eixdyfmsme .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eixdyfmsme .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#eixdyfmsme .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#eixdyfmsme .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#eixdyfmsme .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#eixdyfmsme .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#eixdyfmsme .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eixdyfmsme .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#eixdyfmsme .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#eixdyfmsme .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#eixdyfmsme .gt_left {
  text-align: left;
}

#eixdyfmsme .gt_center {
  text-align: center;
}

#eixdyfmsme .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#eixdyfmsme .gt_font_normal {
  font-weight: normal;
}

#eixdyfmsme .gt_font_bold {
  font-weight: bold;
}

#eixdyfmsme .gt_font_italic {
  font-style: italic;
}

#eixdyfmsme .gt_super {
  font-size: 65%;
}

#eixdyfmsme .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#eixdyfmsme .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#eixdyfmsme .gt_indent_1 {
  text-indent: 5px;
}

#eixdyfmsme .gt_indent_2 {
  text-indent: 10px;
}

#eixdyfmsme .gt_indent_3 {
  text-indent: 15px;
}

#eixdyfmsme .gt_indent_4 {
  text-indent: 20px;
}

#eixdyfmsme .gt_indent_5 {
  text-indent: 25px;
}

#eixdyfmsme .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#eixdyfmsme div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="hostname">hostname</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="serial">serial</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="version">version</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="platform">platform</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="hostname" class="gt_row gt_left">fw3-i-foletta-xyz</td>
<td headers="serial" class="gt_row gt_left">FGVMELTM22001114</td>
<td headers="version" class="gt_row gt_right">700</td>
<td headers="platform" class="gt_row gt_left">FortiGate-VM64-KVM</td></tr>
    <tr><td headers="hostname" class="gt_row gt_left">fw4-i-foletta-xyz</td>
<td headers="serial" class="gt_row gt_left">FGVMELTM22001112</td>
<td headers="version" class="gt_row gt_right">700</td>
<td headers="platform" class="gt_row gt_left">FortiGate-VM64-KVM</td></tr>
    <tr><td headers="hostname" class="gt_row gt_left">fw5-i-foletta-xyz</td>
<td headers="serial" class="gt_row gt_left">FGVMELTM22001111</td>
<td headers="version" class="gt_row gt_right">700</td>
<td headers="platform" class="gt_row gt_left">FortiGate-VM64-KVM</td></tr>
    <tr><td headers="hostname" class="gt_row gt_left">fw6-i-foletta-xyz</td>
<td headers="serial" class="gt_row gt_left">FGVMELTM22001113</td>
<td headers="version" class="gt_row gt_right">700</td>
<td headers="platform" class="gt_row gt_left">FortiGate-VM64-KVM</td></tr>
    <tr><td headers="hostname" class="gt_row gt_left">fw1-i-foletta-xyz</td>
<td headers="serial" class="gt_row gt_left">FGT80FTK22040358</td>
<td headers="version" class="gt_row gt_right">700</td>
<td headers="platform" class="gt_row gt_left">FortiGate-80F</td></tr>
  </tbody>
  
  
</table>
</div>

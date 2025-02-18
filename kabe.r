if( knitr::is_latex_output() ) {
   code_To_Produce_Table_latex %>%
   kable_styling(...) %>%
   row_spec(...)
}
if( knitr::is_html_output() ) {
   out <- code_To_Produce_Table_html

   if ( knitr::is_html_output(excludes = "epub")) {
     kable_styline(out,  ...) %>%
     row_spec(...)
   } else {
    out
   }
}
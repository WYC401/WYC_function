#' @title Calculating the mean of all the numeric columns
#'
#' This is a function computing the summary statistics for each numeric columns
#' @param tibble_1 an object of data.frame, for which tibbles are suggested.
#'
#' @return A vector show the means of each numeric column
#'
#' @examples
#' mean_all_numeric_variables(base::data.frame(data_1=c(1,2,3),data_2=c(0.2,0.4,0.4)))
#‘ mean_all_numeric_variables(base::data.frame(a=c(1,2),b=c("d","d")))
#' @export
mean_all_numeric_variables<-function(tibble_1){
  if(!base::is.data.frame(tibble_1)){
    stop('I am so sorry, but this function only works for data.frame input!\n',
         'You have provided an object of class: ', class(tibble_1)[1])
  }
  tibble_1%>% dplyr::select(tidyselect::vars_select_helpers$where(base::is.numeric))%>%
    tidyr::drop_na()%>%
    base::colMeans()
}

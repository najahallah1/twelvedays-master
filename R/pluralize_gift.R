#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @import english
#' @export
xmas <- read.csv("https://www.dropbox.com/s/e584pryn8evm1gz/xmas.csv?dl=1")
xmas<-xmas%>%mutate(days_spelled=words(xmas$Day))
pluralize_gift <- function(gift){

  gift<-str_replace(gift, "oo", "ee")
  gift<-glue("{gift}s")
  gift<-str_replace(gift, "ys$", "ies")

return(gift)

}



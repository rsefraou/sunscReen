#' @title get_sunsentiments
#'
#' @describeIn get_sunsentiments gets sentiments about sunscreens depending on words
#' @param lexicon A \code{character} (character) used to name the lexicon
#' @return A \code{dataframe} of words with sentiments
#' @import magrittr
#' @export
#' @examples
#' get_sunsentiments("sunscReen")
get_sunsentiments <- function(lexicon = c("sunscReen")) {
  lexicon <- match.arg(lexicon)

  sunscReen = lexicon_sunscReen()
}


#' @title lexicon_sunscReen
#'
#' @describeIn lexicon_sunscReen is used in getsunsentiments
#' @return A \code{dataframe} of sentiments
#' @export
#' @import magrittr dplyr textdata dataesgobr
lexicon_sunscReen <- function(dir = NULL, delete = FALSE, return_path = FALSE,
                              clean = FALSE) {
  texdata:::load_dataset(data_name = "sunscReen", name = "sunscReen.rds",
               dir = dir,
               delete = delete,
               return_path = return_path, clean = clean)
}

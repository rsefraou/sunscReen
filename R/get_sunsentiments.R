#' Get a tidy data frame of a single sentiment lexicon
#'
#' Get specific sentiment lexicons in a tidy format, with one row per word,
#' in a form that can be joined with a one-word-per-row dataset.
#' The \code{"bing"} option comes from the included \code{\link{sentiments}}
#' data frame, and others call the relevant function in the \pkg{textdata}
#' package.
#'
#' @param lexicon The sentiment lexicon to retrieve;
#' either "afinn", "bing", "nrc", or "loughran" or "sunscReen"
#'
#' @return A tbl_df with a \code{word} column, and either a \code{sentiment}
#' column (if \code{lexicon} is not "afinn") or a numeric \code{score} column
#' (if \code{lexicon} is "afinn").
#' }
#'
#' @export
get_sunsentiments <- function(lexicon = c("sunscReen")) {
    lexicon <- match.arg(lexicon)

    sunscReen = lexicon_sunscReen()
}


  #' @family lexicon
  #' @importFrom fs file_exists dir_exists dir_create path
  #' @importFrom readr read_rds
  #' @importFrom utils menu
  #' @export
  #' @examples
  #' \donttest{
  #' lexicon_sunscReen()
  #'
  #' # Custom directory
  #' lexicon_sunscReen(dir = "data/")
  #'
  #' # Deleting dataset
  #' lexicon_sunscReen(delete = TRUE)
  #'
  #' # Returning filepath of data
  #' lexicon_sunscReen(return_path = TRUE)
  #' }
  lexicon_sunscReen <- function(dir = NULL, delete = FALSE, return_path = FALSE,
                          clean = FALSE) {
    load_dataset(data_name = "sunscReen", name = "words.rds",
                 dir = dir,
                 delete = delete,
                 return_path = return_path, clean = clean)
  }


##' @title Get distinct lag-1 auto-correlations

##' @return
##' @author Shir Dekel
##' @export
get_lag1_distinct <- function() {

  # Get all orderings of ones and zeros in a vector of 10
  x <- permutations(n=2, r = 10, v = c(0,1), repeats.allowed = TRUE) %>%
    t()

  # Convert to list
  seq <- split(x, rep(1:ncol(x), each = nrow(x)))

  # Get lag1 for each sequence
  lag1 <- seq %>%
    map_dbl(~ .x %>%
              ts() %>%
              acf(plot= F) %>%
              .[["acf"]] %>%
              .[2])

  # Convert sequences to strings
  seq_chr <- seq %>%
    map_chr(~ .x %>%
              as.character() %>%
              paste0(collapse = "") %>%
              unlist())

  # Combine into a dataframe
  df <- tibble(Sequence = seq_chr,
               lag1 = lag1) %>%
    arrange(lag1)

  lag1_district <- df %>%
    mutate(lag1 = round(lag1, digits = 5)) %>%
    distinct(lag1, .keep_all = T)

  return(lag1_district)

}

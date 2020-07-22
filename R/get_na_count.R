##' @title Get lag1 NA count
##' @param data_lag1
##' @return
##' @author Shir Dekel
##' @export
get_na_count <- function(data_lag1) {

  na_count <- data_lag1 %>%
    group_by(Presentation, Awareness, Similarity) %>%
    summarise(na = trials %>%
                is.na() %>%
                sum(),
              .groups = "drop")

  return(na_count)

}

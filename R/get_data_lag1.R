##' @title Get lag1 data
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_data_lag1 <- function(data) {

  data %>%
    group_by(id, Similarity, Awareness, Presentation) %>%
    nest() %>%
    mutate(trials = map_dbl(data, get_lag1))

}

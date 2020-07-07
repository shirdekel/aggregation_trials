##' @title Get lag-1 auto-correlation
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_lag1 <- function(data) {

  data %>%
    group_by(order) %>%
    select(order, value) %>%
    arrange(order) %>%
    ungroup() %>%
    select(value) %>%
    ts() %>%
    acf(plot = F) %>%
    .[["acf"]] %>%
    .[2]

}

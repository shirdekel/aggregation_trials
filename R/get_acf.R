##' @title Get ACF
##'
##' @param data
##' @param presentation_condition
##' @param similarity_condition
##'
##' @return
##' @author Shir Dekel
##' @export
get_acf <- function(data, presentation_condition, similarity_condition) {

  acf <- data %>%
    filter(Similarity == similarity_condition, Presentation == presentation_condition) %>%
    group_by(order) %>%
    summarise(prop = mean(value), .groups = "drop") %>%
    select(prop) %>%
    ts() %>%
    acf(plot = F) %>%
    autoplot() +
    ggtitle("") +
    theme_apa()

  return(acf)

}
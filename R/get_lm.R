##' @title Get linear regression for trial data
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_lm <- function(data) {

  data %>%
    filter(order == 2) %>%
    glm(value ~ Presentation, ., family = binomial) %>% summary

}
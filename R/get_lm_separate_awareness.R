##' @title Logistic regression for awareness x order in separate presentation
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_lm_separate_trial_awareness <- function(data) {

  lm_separate_trial_awareness <- data %>%
    filter(Presentation == "separate") %>%
    glm(value ~ Awareness * order, ., family = binomial)

  return(lm_separate_trial_awareness)

}

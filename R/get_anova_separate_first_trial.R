##' @title Get ANOVA for first trial
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_anova_separate_trial_first_trial <- function(data) {

  data_separate %>%
    filter(order == 1 | order == 2) %>%
    glm(value ~ Similarity * Awareness, ., family = binomial) %>%
    simple_slopes()

}

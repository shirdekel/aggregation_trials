##' @title Get APA formatted simple slopes

##' @param lm_separate_trial_ss
##'
##' @return
##' @author Shir Dekel
##' @export
get_lm_separate_trial_ss_apa <- function(lm_separate_trial_ss) {

  lm_separate_trial_ss_apa <- c("Aware", "Naive") %>%
    map(~ lm_separate_trial_ss %>%
    filter(Awareness == .x) %>%
    apa_ss()) %>%
    set_names("Aware", "Naive")

  return(lm_separate_trial_ss_apa)

}

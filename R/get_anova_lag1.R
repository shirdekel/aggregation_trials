##' @title Get ANOVA for lag-1 data
##' @param data_lag1
##' @return
##' @author Shir Dekel
##' @export
get_anova_lag1 <- function(data_lag1) {

  anova_lag1 <- data_lag1 %>%
    aov_ez(id = "id",
           data = .,
           within = "Presentation",
           between = c("Similarity", "Awareness"),
           dv = "trials")

  return(anova_lag1)

}

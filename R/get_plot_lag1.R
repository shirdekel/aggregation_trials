##' @title Get lag-1 plot
##' @param data_lag1
##' @return
##' @author Shir Dekel
##' @export
get_plot_lag1 <- function(data_lag1) {

  plot_lag1 <- data_lag1 %>%
    shiR::apa_plot(iv1 = "Similarity",
                   iv2 = "Awareness",
                   iv3 = Presentation,
                   dv = "trials",
                   dv.lab = "Lag-1 auto-correlation")

  return(plot_lag1)

}

##' @title Plot separate presentation awareness x similarity data
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_plot_separate_awareness_similarity <- function(data) {

  plot_separate_awareness_similarity <- data %>%
    apa_plot(iv1 = "Awareness",
             iv2 = "Similarity",
             iv3 = Presentation,
             dv = "value",
             dv.lab = "Proportion of project acceptance")

  return(plot_separate_awareness_similarity)

}

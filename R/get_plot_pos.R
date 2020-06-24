##' @title Get trials plot by positive gamble values
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_plot_pos <- function(data) {

  plot_pos <- data %>%
    ggplot(aes(pos, value, shape = Similarity)) +
    stat_summary() +
    theme_apa()

  return(plot_pos)

}

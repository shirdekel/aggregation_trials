##' @title Get full plot
##' @param data
##' @return
##' @author Shir Dekel
##' @export
get_plot_full <- function(data) {

  plot_full <- data %>%
    ggplot(aes(x = order, y = value, linetype = Similarity)) +
    geom_smooth(method = "loess", color = "black") +
    facet_wrap(vars(Awareness, Presentation), labeller = "label_both") +
    scale_x_continuous("Trial", breaks = 1:10) +
    theme_apa() +
    labs(y = "Proportion of project acceptance")

  return(plot_full)

}

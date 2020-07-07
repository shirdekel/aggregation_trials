the_plan <-
  drake_plan(

    data = clean_data(aggregation::dat),
    plot_full = get_plot_full(data),
    plot_separate_trial_awareness = get_plot_separate_trial_awareness(data),
    lm_separate_trial_awareness = get_lm_separate_trial_awareness(data),
    lm_separate_trial_awareness_apa = apa_print(lm_separate_trial_awareness),
    lm_separate_trial_awareness_ss = simple_slopes(lm_separate_trial_awareness),
    lm_separate_trial_awareness_ss_apa = get_lm_separate_trial_ss_apa(lm_separate_trial_awareness_ss),
    plot_separate_awareness_similarity = get_plot_separate_awareness_similarity(data),
    acf_separate_low = get_acf(data, "separate", "Low"),
    acf_separate_high = get_acf(data, "separate", "High"),
    acf_joint_low = get_acf(data, "joint", "Low"),
    acf_joint_high = get_acf(data, "joint", "High"),
    data_lag1 = get_data_lag1(data),
    anova_lag1 = get_anova_lag1(data_lag1),
    anova_lag1_apa = apa_print(anova_lag1, es = "pes") %>%
      .[["table"]],
    plot_lag1 = get_plot_lag1(data_lag1),
    lag1_distinct = get_lag1_distinct(),
    article = target(
      command = {
        render(knitr_in("doc/aggregation_trials.Rmd"))
        file_out("doc/aggregation_trials.pdf")
      }
    )

  )



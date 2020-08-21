data("msleep")


Tabla <- msleep %>%
  group_by(vore) %>%
  summarise_at("sleep_total", .funs = list(Mean = mean, SD = sd)) %>%
  arrange(desc(Mean)) %>% 
  dplyr::filter(!is.na(vore)) %>% 
  arrange(desc(Mean))
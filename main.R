library(tercen)
library(dplyr)
library(data.table)

ctx <- tercenCtx()

df <- ctx %>% 
  select(.y, .ci, .ri) %>%
  as.data.table()

df_out <- df[, list(median = median(.y)), by = .(.ci, .ri)] %>%
  as_tibble() %>%
  ctx$addNamespace() 

ctx$save(df_out)

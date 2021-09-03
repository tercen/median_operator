library(tercen)
library(dplyr)

ctx <- tercenCtx() # Get data from the data step

ctx   %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(median = median(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()

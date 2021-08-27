library(tercen)
library(dplyr)


options("tercen.workflowId" = "4f5596e8bec3def8ed44506b3f006d28")
options("tercen.stepId"     = "2fcae562-3c10-4437-88c7-88173f5871eb")

getOption("tercen.workflowId")
getOption("tercen.stepId")

ctx <- tercenCtx() # Get data from the data step

ctx   %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(median = median(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()

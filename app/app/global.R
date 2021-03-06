library(RTutor)
library(tidyverse)
library(epitools)
library(rmarkdown)
library(DescTools)

setwd("./work")
app =  show.ps(user.name = "Guest",
			   ps.name = "week_one",
	           make.web.app = TRUE, save.nothing=FALSE,
	           offline=FALSE,sample.solution = FALSE)

app$verbose = FALSE
appReadyToRun(app)

#shinyApp(ui = app$ui, server = app$server)
#runEventsApp(app)

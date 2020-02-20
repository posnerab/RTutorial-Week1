# Create app based on .rps

ps.name = "week_one" # problem set name
libs = c("tidyverse",
         "readr",
         "readxl") # list of all libraries used by ps
# Folder that contains your .rps file
rps.dir = "~/R/shinyapps/RTutorial-Week1"
# Folder in which app shall be created
app.dir = "~/R/shinyapps/RTutorial-Week1/app"
rtutor.app.skel(ps.name=ps.name, app.name="RTutorial-Week1",
                app.dir=app.dir, rps.dir = rps.dir,
                rps.app = TRUE, libs=libs,overwrite=TRUE)

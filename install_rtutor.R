install.rtutor = function(update.cran=FALSE, update.github=TRUE, lib=.libPaths()[1], upgrade="never", force=TRUE,...) {
  
  cat("\nInstall required packages from CRAN...")
  
  pkgs = c("withr","devtools","whisker","stringr","jsonlite","data.table","markdown","DT","dplyr","shiny","shinyBS","hwriter","lmtest","texreg","RCurl", "memoise","shinyAce","restorepoint")
  for (pkg in pkgs) {
    if (!update.cran) {
      if (!require(pkg, character.only=TRUE) | update.cran)
        try(install.packages(pkg,lib=lib))
    } else {
      try(detach(paste0("package:",pkg), character.only=TRUE, force=TRUE), silent=TRUE)
      try(install.packages(pkg,lib=lib))  
    }
  }
  
  cat("\nInstall required packages from Github...")
  
  # Install packages from Github
  repos = c(
    "skranz/stringtools",
    "skranz/shinyEvents",
    "skranz/dplyrExtras",
    "skranz/regtools",
    "skranz/RTutor"
  )
  library(withr)
  for (repo in repos) {
    pkg = strsplit(repo,"/", fixed=TRUE)[[1]][2]
    if (!update.github) {
      if (!require(pkg, character.only=TRUE) | overwrite.github)
        try(with_libpaths(new = lib, devtools::install_github(repo=repo, upgrade=upgrade,...)))
    } else {
      try(detach(paste0("package:",pkg), character.only=TRUE,force=TRUE), silent=TRUE)
      try(with_libpaths(new = lib, devtools::install_github(repo=repo, upgrade=upgrade, force=force,...)))
    }
  }
  library(RTutor)
}
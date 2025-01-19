#1. Install RTools
# cran.r-project.org/bin/windows/Rtools/index.html

#2. Install Java
install.packages("multilinguer")
library(multilinguer)
install_jdk()

#3. Install pre-required packages
install.packages(c("hash", "tau", "Sejong", "RSQLite", "devtools", 
                   "bit", "rex", "lazyeval", "htmlwidgets", "crosstalk", 
                   "promises", "later", "sessioninfo", "xopen", "bit64", 
                   "blob", "DBI", "memoise", "plogr", "covr", "DT", 
                   "rcmdcheck", "rversions"), type = "binary")

#4. Install KoNLP
install.packages("remotes")
remotes::install_github("haven-jeon/KoNLP",
                 upgrade="never",
                 INSTALL_opts = c("--no-multiarch"),
                 force = TRUE
)

#5. copy 'scala-library-2.11.8.jar' to KoNLP/java folder
setwd('D:/source')   # folder of  'scala-library-2.11.8.jar'
pkg_folder <- paste0(.libPaths(), '/KoNLP/java')[1]
file.copy('scala-library-2.11.8.jar', pkg_folder) 

#6. Test
library(KoNLP)
extractNoun("재래시장에서 사온 과일과 음식입니다.")



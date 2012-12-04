#pac <- c("plyr","ggplot2","lubridate")
#install.packages(pac)


banks <- get_returns(c("BAC","WFC","DB","JPM","GS"), start="2007-01-01")
banks <- get_returns(c("DIA"), start="2007-01-01")    #compare Dow-Jones with S&P
head(banks)
tail(banks)   # note S&P_500 was added

qplot(date, return, data=banks, col=.id)
qplot(date, return, data=banks, col=.id) + theme_bw()
qplot(date, return, data=banks, col=.id, geom="smooth") + theme_bw()
qplot(date, return, data=banks, col=.id, geom="smooth",
      method=loess) + theme_bw()

stats(banks)


#parts of a package
#R diretory
#DESCRIPTION file  (put dependencies in here)
#literate programming
# roxygen
# knitr and sweave



install.packages("roxygen2")
install.packages("Rtools")

# click on Build-more-configure build tools
# then check box
## Roxeginize shows up in More directrory
### if you click this it changes all code in R subdirectory
?get_returns
?year


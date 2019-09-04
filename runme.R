## Simple example for running in R.

## This can be run by
## source("runme.R")


## Check if popular tools exist (from ImageMagick)
## make: make
## mogrify: imagemagick
Sys.which(c("make", "mogrify"))


## make a simple data frame
x = rnorm(9999)*3+20
df = data.frame(x=x, y=sqrt(x))


## Check if ggplot2 installed.

if (require(ggplot2)) {  
  p = ggplot(df, aes(x=x)) + geom_histogram() + ggtitle("ggplot2 histogram")
  plot(p)
} else {
  cat("sorry, ggplot2 not [yet] installed!")
}

print(sessionInfo())



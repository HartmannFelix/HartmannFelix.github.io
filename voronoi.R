rm(list=ls(all=TRUE))
getwd()
options(stringsAsFactors = FALSE)
# Use text-mining package to extract text from PDF files


##############################################
#### 
##############################################
setwd("/Users/xharfe/Desktop/website/HartmannFelix.github.io")

#install.packages("deldir", dependencies=TRUE)
#install.packages(c("sp", "maps", "maptools", "mapproj"), dependencies=TRUE)
library("deldir")
library("sp")
library("maps")
library("maptools")
library("mapproj")


# Generate points
x <- rnorm(500, 0, 1.5)
y <- rnorm(500, 0, 1)

# Calculate tessellation and triangulation
vtess <- deldir(x, y)

plot(x, y, type="n", asp=1)
points(x, y, pch=20, col="red", cex=0.5)

# Delaunay triangulation
plot(x, y, type="n", asp=1)
plot(vtess, wlines="triang", wpoints="none", number=FALSE, add=TRUE, lty=1)
points(x, y, pch=20, col="black", cex=0.5)


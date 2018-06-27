#setting working directory and adding package (not sure if I really need this package)
setwd("D:/database/spatial/PR17_shape")
library(readr)

#opening file
ac <- read_csv("ac17albers_sqm.csv")

#selecting only the variables I want
myvars <- c("ShapeID", "class_name", "dsfnv", "Shape_Area")

#creating new version with only variables I want
ac2 <- ac[myvars]

#adding a new variable where area has been converted from sq meters to hectares
ac2$AreaHa <- ac2$Shape_Area*.0001

#saving subset as csv
write.csv(ac2, file = "ac2.csv", quote = FALSE, row.names = FALSE)


am <- read_csv("am17albers_sqm.csv")
am2 <- am[myvars]
write.csv(am2, file = "am2.csv", quote = FALSE, row.names = FALSE)
ap <- read_csv("ap17albers_sqm.csv")
ap2 <- ap[myvars]
write.csv(ap2, file = "ap2.csv", quote = FALSE, row.names = FALSE)
ma <- read_csv("ma17albers_sqm.csv")
ma2 <- ma[myvars]
write.csv(ma2, file = "ma2.csv", quote = FALSE, row.names = FALSE)
mt <- read_csv("mt17albers_sqm.csv")
mt2 <- mt[myvars]
write.csv(mt2, file = "mt2.csv", quote = FALSE, row.names = FALSE)
ro <- read_csv("ro17albers_sqm.csv")
ro2 <- ro[myvars]
write.csv(ro2, file = "ro2.csv", quote = FALSE, row.names = FALSE)
rr <- read_csv("rr17albers_sqm.csv")
rr2 <- rr[myvars]
write.csv(rr2, file = "rr2.csv", quote = FALSE, row.names = FALSE)
to <- read_csv("to17albers_sqm.csv")
to2 <- to[myvars]
to2$AreaHa <- to2$Shape_Area*.0001
write.csv(to2, file = "to2.csv", quote = FALSE, row.names = FALSE)


?write.csv
to2$AreaHa <- to2$Shape_Area*.0001
View(to2)

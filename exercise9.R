#part2
#opening libraries
library("ggplot2")
library("cowplot")
library("reshape2")

#loading in data
data1<-read.csv("data.txt")

#making barplot
mybarplot<-ggplot(data=data1, mapping=aes(x=region,y=observations))+stat_summary(geom="bar",fun.y = "mean")
mybarplot

#making scatter plot
myscatterplot<-ggplot(data=data1, mapping=aes(x=region,y=observations))+geom_jitter(data=data1,mapping=aes(x=region,y=observations))
myscatterplot
#graphing both together
plot_grid(mybarplot,myscatterplot, nrow=1)

#The bar plot makes the populations all look very similar, 
#whereas the scatter plot shows that they each have unique behavior, 
#with the east having kind of a bell shape curve,
#the north having a single tight cluster,
#the south having a tight cluster and a loose cluster,
#and the west having a uniform distribution.
#Part1
#1
library("ggplot2")
library("cowplot")
library("reshape2")
#Note: 50 Dictatorships were found in total, however, 7 were removed due to a lack of data (i.e. North Korea) and one additional one was removed, Bahrain, because it was a drastic outlier, having a very high population density; Bahrain is in fact the #8 densest population worldwide at about 2,000people/sq.km)
#Reading the file that contains data on Dictatorships, their GDP per Capita, and their Population Density
DictVGDP<-read.csv("DictVGDP.csv")
#Making a vector of GDP/Capita data:
GDP_per_Capita<-DictVGDP$ï..gdp
#Making a vector of population density data:
Population_Density<-DictVGDP$N
#Creating the plot:
myscatterplot<-ggplot(data = GDP2, mapping=aes(x=GDP_per_Capita,y=Population_Density))+geom_point(data = GDP2, mapping=aes(x=GDP_per_Capita,y=Population_Density))+stat_smooth(method="lm",color="red")
#Viewing the plot:
myscatterplot

#Part2
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

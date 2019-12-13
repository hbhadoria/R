install.packages('ggplot2')
library(ggplot2)

mtcars=mtcars
mtcars

#Histogram
ggplot(mtcars, aes(x=mpg))+geom_density(color='red',fill='green')+ggtitle('distribution of mpg')+
ylab('numbers')+xlab('mile per gallon')


#Scatter Plot
ggplot(mtcars, aes(x=wt, y=mpg, color=as.character(cyl)))+
  geom_point(size = 5)+ggtitle('correlation of wt and mpg & cyl')


#boxplot
ggplot(mtcars, aes(x=cyl, y=mpg, color=as.character(cyl), fill=as.character(cyl))) +geom_violin()+xlab('Number of Cylinders')+
  ggtitle('Boxplot for mpg values')


install.packages('plotly')
library(plotly)

max(mtcars$mpg)
min(mtcars$mpg)

max(mtcars[,1])
min(mtcars[,1])

ind = which.min(mtcars$mpg)
rownames(mtcars)[ind]

index1 = which(mtcars$mpg> 30)
rownames(mtcars)[index1]

which(mtcars$mpg==max(mtcars$mpg))

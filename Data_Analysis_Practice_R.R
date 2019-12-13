library(datasets)
head(iris)
library(dplyr)
lead(1:10,1)
lead(1:10,2)
lead(1:10,3)
lag(1:10,1)
lag(1:10,2)
sq<-c('Q1','Q2','Q3','Q4')
sv<-c(10000,15000,17000,15000)
sales<-data.frame(sq,sv)
sales
sales$diff<-lead(sales$sv,1)-sales$sv
sales
sales$diff_lag <- sales$sv - lag(sales$sv)
sales
?lead
head(mtcars)

mtcars %>% group_by(cyl) %>% summarise(model_count = n()) %>%arrange(desc(model_count))

mtcars %>% group_by(cyl) %>%tally()

head(mtcars)
cyl_6 <-filter(mtcars, cyl==6)
head(cyl_6)
mpg_18plus <- filter(mtcars, mpg >=18)
head(mpg_18plus)

cyl_4_6 <- filter(mtcars, cyl %in% c(4,6) )
head(cyl_4_6)

cyl_6_1 <- filter(mtcars, cyl==6 | am==1)
head(cyl_6_1)


str(mtcars)
distinct(mtcars, hp)
distinct(mtcars, am)


arrange(mtcars, desc(cyl), am)

arrange(mtcars, cyl, am)
mtcars %>% arrange(cyl, am)

mtcars %>% arrange(desc(cyl), am)

mtcars %>% select(mpg, cyl) %>% arrange(mpg)

mutate(mtcars, gear_multiply = gear*2)

mutate(mtcars, gear_cyl=cyl-gear)

mutate(mtcars, gear_2=gear*2, cyl_gear = cyl - gear)


str(iris)

iris
iris_dtdf<-tbl_df(iris)
iris_dtdf
glimpse(iris_dtdf)
mtcars_df<-tbl_df(mtcars)
glimpse(mtcars_df)
print(iris_dtdf, n=12)
mtcars_df
print(mtcars_df, width=Inf)

mtcars_nsample<- sample_n(mtcars, 20)
mtcars_nsample

mtcars_frac <-sample_frac(mtcars, 0.5)
mtcars_frac

summarise(mtcars, mean_mpg=mean(mpg), mean_disp = mean(disp))
summarise_at(mtcars, vars(contains('p')), funs(mean, median))
summarise_if(mtcars, is.numeric, mean)
mtcars_ft<-mtcars
mtcars_ft$cyl<-as.factor(mtcars_ft$cyl)
summarise_at(mtcars_ft, vars(contains('p')), funs(mean, median))
summarise_all(mtcars, funs(mean,median))

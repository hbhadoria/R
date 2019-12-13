employees<-list(names=c('Mark','Tom','Laura','Sandra'),
                age=c(49,28,35,25),
                gender=c('m','m','f','f'),
                salary=c(75000, 62000, 55000, 46000),
                manager=c(TRUE,FALSE,FALSE,FALSE))
employees

employ<-vector(mode='list')

class(employ)


employees[['salary']][c(1,4)]
employees[['age']][-1:-3]

employees$names
employees$gender
employees$salary

employees$hours<-c(200,220,235,215)
employees

employees$hours<-NULL
employees


carspec<-list(engine=c(1.8,3.2,3.5,1.8,2.8,4.2),
              horse=c(140,225,210,150,200,310),
              weight=c(2639,3517,3850,2998,3561,3902))


carspec
lapply(carspec,mean)
lapply(carspec,sd)
lapply(carspec,sum)

s<-sapply(carspec,mean)
class(s)


price<-c(21.5,28.4,42.0,23.9,33.9,62.0,26.9,33.4,39,21.9)

engine<-c(1.8,3.2,3.5,1.8,2.8,4.2,2.5,2.8,2.8,3.1)

horse<-c(140,225,210,150,200,310,170,193,195,175)

fit<-lm(price~engine+horse)
fit
summary(fit)
fit$call
fit$model

fit$fitted.values
fit$residuals


x<-c(4,4,6,5,6,6,6,4,4,5,4,5,6,4)
f<-factor(x)
f

y<-c('a','b','c','a','b','c','b','a','a','c')
ff<-factor(y)
ff
levels(ff)


f<-factor(x, labels=c('Ford', 'Toyota','Medrcedes'))
f
x

f<-factor(x,levels=c(5,6,4), labels=c('Ford','Toyota','Mercedes'))
f




x<-1:10
y<-rnorm(10)
dt<-data.frame(x,y)
dt
View(dt)

z<-c('a','b','c','d','e','f','g','h','i','j')
z
w<-c(TRUE, TRUE, TRUE, TRUE,TRUE, FALSE, FALSE,FALSE,FALSE, FALSE)
dt<-data.frame(x,y,z,w,
               row.names =c('r1','r2','r3','r4','r5','r6','r7','r8','r9','r10'),
               stringsAsFactors = FALSE)
dt
View(dt)
class(dt)
typeof(dt)
dim(dt)
nrow(dt)
ncol(dt)
str(dt)

setwd('C:/Users/HP/Documents/R/Rprog_Udemy')
bm<-read.csv('bank-marketing.csv',header=TRUE, sep=';',stringsAsFactors = FALSE)
View(bm)

car<-read.csv('carsales.csv',header=TRUE,stringsAsFactors = FALSE )
car
View(car)

cpu<-read.csv('cpu-performance-data.txt', sep=',', header=FALSE, stringsAsFactors = FALSE)
cpu
View(cpu)

x<-1:10
y<-rnorm(10)
z<-c('a','b','c','d','e','f','g','h','i','j')
w<-c(TRUE, TRUE, TRUE, TRUE,TRUE, FALSE, FALSE,FALSE,FALSE, FALSE)
dt<-data.frame(x,y,z,w,
               row.names =c('r1','r2','r3','r4','r5','r6','r7','r8','r9','r10'),
               stringsAsFactors = FALSE)

write.csv(dt,file='example2.csv', row.names=FALSE)

write.table(dt,file='example3.csv', row.names = FALSE)

bm<-read.csv('bank-marketing.csv',header=TRUE, sep=';',stringsAsFactors = FALSE)
View(bm)
bm[[2]][10]
bm[['balance']][4]
bm$balance[2:7]

bm[3,]
y<-bm[6]
y
class(y)
typeof(y)

bm[2:4,5:8]
bm1<-bm[-1:-5,-3:-5]
View(bm1)


bm<-read.csv('bank-marketing.csv',header=TRUE, stringsAsFactors = FALSE, sep=';')
View(bm)
nrows<-nrow(bm)
nrows
i<-sample(nrows,100)
i
bm1<-bm[i,]
View(bm1)
bm2<-bm[-i,]
View(bm2)


bm<-read.csv('bank-marketing.csv',header=TRUE, stringsAsFactors = FALSE, sep=';')
View(bm)
bm1<-bm[bm$balance>1000,]
View(bm1)
bm1<-bm[bm$duration<150,]
View(bm1)

bm1<-bm[bm$education=='tertiary'& bm$marital=='married',c(1:4,6)]
View(bm1)

bm<-read.csv('bank-marketing.csv',header=TRUE, stringsAsFactors = FALSE, sep=';')
View(bm)

bm[2,3]<-'married'
bm$balance[1]<-1000
bm$loan[7]<-'No'

bm$balance[4:6]<-c(400,500,600)


car<-read.csv('carsales.csv',header=TRUE,stringsAsFactors = FALSE )
View(car)

car2<-rbind(car,c(26.4,3.2,225,3500))
View(car2)


x<-runif(nrow(car))
car3<-cbind(car,x)
View(car3)

car3$x<-NULL
View(car3)



car<-read.csv('carsales.csv',header=TRUE,stringsAsFactors = FALSE )
View(car)

x<-1001:1155
rownames(car)<-x

row.names(car)[3]<-'BMW'

colnames(car)[4]<-'curbweight'


m<-apply(car,2,mean)
m
class(m)
typeof(m)
m1<-lapply(car,mean)
m1
class(m1)
typeof(m1)

sm<-sapply(car,mean,simplify = FALSE)
sm
class(sm)
typeof(sm)

bm<-read.csv('bank-marketing.csv',header=TRUE, stringsAsFactors = FALSE, sep=';')
View(bm)

apply(bm,2,mean)
lapply(bm,mean)
sapply(bm,mean)

car<-read.csv('carsales.csv',header=TRUE,stringsAsFactors = FALSE )
View(car)
car2<-car[order(-car$price),]
View(car2)

car2<-car[order(car$engine, -car$horse),]
View(car2)


car<-read.csv('carsales.csv',header=TRUE,stringsAsFactors = FALSE )
View(car)

rnd<-runif(nrow(car))
car<-car[order(rnd),]

id<-c(101,102,103,104,105)
name<-c('Mark','Lisa','John','Anna','Peter')
salary<-c(62000, 75000, 48000, 42000, 56000)
employ<-data.frame(id,name,salary)
employ
h<-c(235,220,247,215,260)
hours<-data.frame(id,h)
hours

dt<-merge(employ,hours,by='id')
dt

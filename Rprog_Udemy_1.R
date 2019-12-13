print('Hello My Friend')


#This is a comment
require(vcd)
detach(package:vcd)

x.y<-2
class(x.y)
typeof(x.y)

v<-'Tom'
v
class(v)
typeof(v)

t<-'52'
t
class(t)
typeof(t)

m<-TRUE
n<-FALSE
class(m)
typeof(m)

X<-100

print('Hello')
Pring('Hello')


ls()

rm(x)
rm(t)
ls()

rm(X)
ls()

rm(list=ls())
ls()



x<-c(10,20,30,40,50)
x
class(x)
typeof(x)

y<-c('a','b','c')
y
class(y)
typeof(y)


n<-c(1,2,'a','b',TRUE,FALSE)
n
class(n)
typeof(n)
length(n)

x<-1:5
x
class(x)
typeof(x)

x<-c(1,2,3,4,5)
x
class(x)
typeof(x)

1:5==c(1,2,3,4,5)


x<-c(1:5,6:9)
x
class(x)
typeof(x)

rep(5,3)

y<-rep('ab',6)
y


s<-rep(2:5,each=3)
s


t<-numeric(4)
t

k<-character(4)
k


u<-logical(4)
u

x<-seq(from=1,to=10,by=0.5)
x

y<-seq(1,10,0.5)
y

z<-seq(0,20,3)
z

q<-seq(1,5,length=10)
q

x<-seq(-3,25,length=100)
x


y<-c(seq(1,10,length=5),30,40)
y

z<-rep(seq(1,3,0.5),3)
z

w<-rep(seq(1,3,0.5),each=3)
w


n<-sample(1:100,12)
n


h<-100:300
n<-sample(h,10)
n

n<-sample(15,30)
n


x<-rnorm(100,10,5)
x

x<-rnorm(100)
x

y<-runif(100,1,5)
y

z<-rexp(100,1/50)
z

x<-c()
x
typeof(x)
length(x)

y<-NULL
y
typeof(y)


z<-vector()
z
typeof(z)

x<-c(x,1,2)
x

y<-c(y,1,2)
y


x<-c(10,20,30,40,50,60,70,80,90,100)
x
x[2]
x[2:5]
x[5:2]
x[c(1:4,7)]
x[length(x)]
n<-3:5
x[n]
x[-2]
x[c(-3,-4,-5)]
x[-length(x)]
x[c(0,-7)]
x[-6]
x[5]<-11
x


p<-c()
p[1]<-3
p[2]<-7
p


x<-c(1,2,3,4)
x[c(2,3)]
n<-c(FALSE, TRUE, TRUE, FALSE)
x[n]


salary<-c(4000,2700,3200)

names(salary)<-c('John','Andrew','Mary')
salary
salary['John']


x<-c(10,20,30,40,50,60,70,80,90,100)
x
y<-x[x>45]
y
y<-x[x<72]
y
y<-x[x!=30]
y

y<-x[x>27 & x<83]
y
y<-x[x<35 | x>71]
y

y<-x[x>20 & x!=80]
y

which(x!=40)

which(x>40)
i<-which(x>43)
i

40 %in% x
86 %in% x

x<-c(1,3,5,7,9,11,13,15)

all(x>0)

all(x<50)

all(x>0 & x<10)


any(x==11)
any(x<10 & x>3)
any(x<0 | x>100)


x<-c(2,4,6,15,17,19)
sum(x)
prod(x)
cumsum(x)
mean(x)
median(x)
sd(x)
var(x)
summary(x)


x<-c(1,2,3,4,5)
y<-x+10
y
y<-x*3
y

y<-x%%2
y

y<-x^2
y

exp(x)

sqrt(x) 
x^(1/2)
x^(1/3)

log(x)
sin(x)
cos(x)
abs(x)


z<-c(1.2,3.4,5.6,9.5)
round(z)

floor(z)

ceiling(z)

w<-c(3.954,7.200, 9.0280)
signif(w,1)
signif(w,2)
signif(w,3)


x<-c(1,3,4,6,7)
factorial(x)

sal<-c(3500,1800,2400,NA,2900)
mean(sal,na.rm = TRUE)
sal2<-na.omit(sal)
sal2
mean(sal2)
length(sal)
length(sal2)
y<-is.na(sal)
y


x<-c(6,8,3,11,5,10,2,17)
x
sort(x)
x
order(x)

y<-sort(x,decreasing=TRUE)
y

w<-c('z','a','n','d')
sort(w)
sort(w,decreasing = TRUE)

q<-c(TRUE, FALSE, TRUE, FALSE)
sort(q)
sort(q,decreasing=TRUE)


x<-c(4,1,7,5,12,6)
min(x)
max(x)
which.min(x)
which.max(x)
x
y<-c(2,9,7,6,10,14)
pmin(x,y)
pmax(x,y)


x<-c(6,10,9,5,20,7,16)
y<-ifelse(x%%2==0,x/2,x)
y


x<-c(2,6,15,10,20,14)
y<-ifelse(x<=12,x*5,x*3)
y

x<-c(12,-4,-34,23)
y<-ifelse(x>=0, sqrt(x),sqrt(-x))
y


x<-c(2,4,6,8)
y<-c(10,20,30,40)
z<-x+y
z


x<-c(7,10,3,9,6)
y<-c(2,14,5,15,6)
x>y
y==x
y!=x

x<-c(2,4,6)
y<-c(2,4,6)
all(x==y)

identical(x,y)
all.equal(x,y)

x<-c(4,5,6)
y<-4:6
identical(x,y)
all.equal(x,y)
typeof(y)


sal<-c(80,66,42,40,75,82,54,44,85,83)
edu<-c(15,18,12,12,16,17,13,12,17,16)
cor.test(sal,edu)



m<-matrix(c(1,2,3,4,5,6), nrow=2, ncol=3)
m
dim(m)
nrow(m)
ncol(m)
class(m)
typeof(m)

m<-matrix(rep(8,9),nrow=3)
m

m<-matrix(seq(1,5,length=30),nrow=5,byrow=FALSE)
m

m<-matrix(rnorm(20),nrow=5,byrow = TRUE)
m

x<-c(1,2,3,4)
y<-c(10,11,12,13)
z<-c(20,30,40,50)
rbind(x,y,z)
cbind(x,y,z)


m<-matrix(c(1,2,3,4,5,6),nrow=2,
          dimnames=list(c('row1','row2'),c('col1','col2','col3')))
m


m<-matrix(c(1,2,3,4,5,6),nrow=2)
m
rownames(m)<-c('row1','row2')
m
colnames(m)<-c('col1','col2','col3')
m
rownames(m)<-NULL
colnames(m)<-NULL
m



m<-matrix(1:16,nrow=4,byrow=TRUE)
m
m[2,3]

m[,3]
m[,3]
m[2,2:4]

c(m[1:2,1:2],m[3:4,3:4])

m[5:7]
m[5]
m[2:4,-1]


i<-sample(100,16,replace=TRUE)
m<-matrix(i,nrow=4,byrow=TRUE)
m
m[m>50]
m[m>30 & m<70]
which(m>30)

m<-m[-2,]
m


sample(100.20)
m<-matrix(i,nrow=4,byrow=TRUE)
m
min(m)
max(m)
max(m[,4])
max(m[,3])
which.min(m)
which.max(m)


m<-matrix(1:16,nrow=4)
m
apply(m,1,sum)
apply(m,2,sum)
apply(m,1,prod)
apply(m,2,prod)
apply(m,1,mean)
apply(m,2,mean)
apply(m,1,sd)
apply(m,2,sd)
apply(m,1,cumsum)


m<-matrix(1:16,nrow=4,byrow=TRUE)
m
m1<-matrix(apply(m,1,cumsum),nrow=4,byrow=TRUE)
m1
m2<-apply(m,1,cumsum)
m2
m
apply(m,2,cumsum)
m

apply(m,1,sqrt)
m


m<-matrix(1:12, nrow=3, byrow = TRUE)
m
sweep(m,2,c(10,20,30), '/')

adv<-rnorm(30,400,200)
sales<-rnorm(30,4000,1000)
plot(sales~adv, main='Sales vs. Advertising Expenses',
     xlab='Advertising Expenses',
     ylab='Sales in Thousands',
     font.main=2, cex.main=0.8,
     cex.lab=0.8, cex.axis=0.6,
     sub='Data for 30 Companies',cex.sub=0.7,
     font.lab=3,
     col='coral4',
     pch=3,cex=1)

par(bg='white')

grid(nx=10, ny=10, col='gray',lty = 'solid')

fit<-lm(sales~adv)

abline(fit,col='darkred')



adv<-rnorm(30,400,200)

sales<-rnorm(30,4000,1000)

sector<-sample(1:3,30,replace=TRUE)

sector2<-factor(sector, levels=c(1,2,3),
                labels=c('Manufacturing','Services','Retail'))
sector2
plot(sales~adv, col=sector2, pch=16)
legend(x=550, y=5500, legend=levels(sector2),col=1:3,
          lty='solid', cex=0.5)


years<-2007:2016

profitA<-c(73,100,85,115,140,165,120,150,195,190)
profitB<-c(60,95,125,170,120,140,165,180,170,185)

plot(profitA~years, type='l', col='red',lwd=2)

lines(profitB~years, type='l',col='blue',lwd=2)


legend(x=2014, y=110, legend=c('Company A','Company B'),
                                col=c('red','blue'), lty= 1, cex=0.6, title='Profit')

plot(profit~years, type='o',
     main='Profit Chart',
     xlab='Year',ylab='Profit in Thousands',
     col='darkblue',lty=3, lwd=2,
     pch=8, cex=1.5)


country<-c('Germany','Switzerland','Italy','Portugal')
wage<-c(44900, 58300, 34100, 24100)

barplot(wage, names=country, main='Average wage by Country',
        xlab='Countries',ylab='Average Wage',
        cex.main=1.1, ylim=c(0,58300),
        font.main=1)

barplot(wage, names=country, col='red', border = 'darkblue')



x<-sample(500,200,replace=TRUE) 

x<-rnorm(200)
hist(x)
y<-rnorm(200)
hist(y, main='Histogram Exaple',col='red',border='darkgreen',breaks=50,freq=FALSE)

x<-rnorm(200)
dx<-density(x)
plot(dx,main='Density Lines',xlab='x',
     ylab='Frequency',
     col='red',lwd=2)
plot(dx, main='Density Function',
     xlab='x',ylab='Frequency',
     col='red')

y<-rnorm(200)
dy<-density(y)

plot(dx, main='Density Lines',
     xlab='x',ylab='Frequency',
     col='red')
lines(dy,col='darkgreen')


country<-c('Germany','Switzerland','Italy','Portugal')
wage<-c(44900,58300,34100,24100)
pie(wage,labels=country,col=c('red','green','blue','orange'), main='Average Wages per Country',
    cex.main=0.9, cex=0.8)

perc<-100*(wage/sum(wage))
perc<-round(perc,0)
perc
labels<-paste(country,perc)
labels
labels<-paste0(labels, '%')
labels
pie(wage,labels=labels,edges=TRUE,
    col=c('green','blue','red','yellow'))


x<-rnorm(100)
boxplot(x,col='red',
        main='Boxplot',
        xlab='x', ylab='Values')



category<-sample(1:2, 100, replace=TRUE)
boxplot(x~category, col=c('red','green'))


boxplot(x,col='red',notch = TRUE)
boxplot(x~category, col=c('red','green'),notch=TRUE)


f<-function(x)(x^2+x+1)
plot(f)

plot(f,xlim=c(-100,100),lwd=2,col='red')

f2<-function(x){(exp(x)+1)/(x-1)}
plot(f2,xlim=c(-5,5))


x<-'Hello my friends'
y<-"Hello my friends"
z<-"'Hello! my friends"
z
nchar(z)
nchar(x)
nchar(y)


y<-character(2)
y
length(y)
nchar(y)

z<-character(0)
z
length(z)
nchar(z)
z[1]<-'Tom'
length(z)
nchar(z)

x<-'The weather is fine'
is.character(x)

x<-c(2,3,4)
typeof(x)
x<-as.character(x)
x

print('The weather is fine')

print('The weather is fine', quote=FALSE)
noquote('The weather is fine')
format(3.5344535, digits=3)

y<-5.32435345

y<-format(y,digits=3)
y
typeof(y)

sprintf('%.3f',0.34335)
sprintf('%+f',0.3423432)

sprintf('%.4g',84.243589)



x<-'The weather'
y<-'is fine'
z<-c(x,y)
z
x+y
z<-paste(x,y)
z

z<-paste(x,y,sep='-')
z

x<-c('a','b','c','d')
y<-c(1,2,3,4)
w<-paste(x,y,sep='--',collapse=',')
w


x<-c('The weather','we go to')
y<-c('is fine','take a walk')
z<-paste(x,y,collapse=' and ')
z

paste0('port','land')


cat('The weather'," is fine")

x<-'Mark and Jenny went to New York'
tolower(x)
toupper(x)
casefold(x)
casefold(x, upper=TRUE)

x<-'Mary has o cat'
chartr('o','a',x)

x<-'philadelphia'
substr(x,8,5)

x<-c('philadelphia','chicago','seatlle')
substr(x,2,4)


strsplit("Philadelphia",split='')

x<-c('philadelphia','Austin')
grep(pattern='del',x)
grep(pattern = 'stin',x)

grepl(pattern='a',x,ignore.case=TRUE)

grep('del', x)
grepl('del',x)

regexpr('w',x)

gregexpr('hil',x)


x<-c('Massachussets','Russel')
sub('ss','dd',x)
sub('abc','xyz',x)
gsub('ss','dd',x)


grep('[ld]',c('Philadephia','Milwaukee','Boston'),value=TRUE)
grepl('[ld]',c('Philadephia','Milwaukee','Boston'))

gsub('[ld]','***',c('Philadephia','Milwaukee','Boston'))

x<-c('target','window','store')
grep('t.r',x,value=TRUE)


x<-c('stop','wait3_5','789')
grep('\\w',x,value=TRUE)

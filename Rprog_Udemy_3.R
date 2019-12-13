for (i in 1:10){
  print(i^2)
}

x<<-c()

for (i in 1:10){
  x<-c(x,i^2)
}

x

x<-seq(1,10,length=20)
x

for(i in x){
  print(i^2)
}


for (i in 1:10){
  print(i^2)
}

x<-c()

for (i in 1:10){
  x<-c(x,i^2)
}
x

x<-c()
for(i in 1:10){
  x[i]<-i^2
  
}
x


x<-seq(1,10,length=20)
x

for (i in x){
  print(i^2)
}


y<-c()

for(i in x){
  y<-c(y,i^2)
}
y


y<-c()
ind<-1
for(i in x){
  y[ind]<-i^2
  ind<-ind+1
}
y
class(y)
typeof(y)

x<-c()
for(i in 1:10){
  if(i==4) next
  x<-c(x,i^2)
}
x


x<-c()
for(i in 1:10){
  if(i==4) break
  x<-c(x,i^2)
}
x


i<-0
x<-c()

while (i<10){
  i<-i+1
  x<-c(x,sqrt(i))
}

x


i<-0

repeat{
  i<-i+1
  print(i*2)
  if (i==10) break
  
}



x<-c(1,2,3)
y<-c(10,20,30,40,50)
m<-c()

for( i in 1:length(x)){
  rw<-c()
  
  for (j in 1:length(y)){
    rw<-c(rw,x[i]*y[j])
  }
  m<-rbind(m,rw)
}
m



x<--2

if(x>0){x*5}



print('Enter the value of x:')
scan()


x<-67

if(x<=100){
  if(x<=50){
    print('Your number is lower than or equal to 50')
  } else{
    print('Your number is between 50 & 100')
  }
} else{
    print('Your number is greater than 100')
}

x<-c(8,10,15,20,23,26,21)

ifelse(x%%2==0, x/2,x)


m<-matrix(sample(100,9),nrow=3)
View(m)

even<-c()
odd<-c()

for (i in 1:nrow(m)){
  for (j in 1:ncol(m)){
    if (m[i,j]%%2==0){
      even<-c(even,m[i,j])
    } else {
      odd<-c(odd,m[i,j])
    }
  }
}
even
odd



f<-function(x){
  x^2 + 3*x +5
}
f(3)
f(-5)
f(1:10)
class(f)
typeof(f)

f<-function(x,y){
  sin(x) + cos(y)
}
f(0,0)
f(190,120)

area<-function(width,height){
  width*height
  
 }
area(10,3)
  





#This is an application to compute the Historical Simulation Value-at-Risk for a portfolio of stocks included in S&P500
#List of all the tickers in S&P500 can be found here : https://en.wikipedia.org/wiki/List_of_S%26P_500_companies
#The application provides the flexibility to enter as many stock tickers as the user wants
#The price data used is being sourced from Yahoo!Finance.
#In the below computation, we are assuming that we have equal investments of 100 in all the stocks in the portfolio
#Creator: Hemant Bhadoria
#Date : 12/10/2019
#In case of any issues/queries, please feel free to reach out to me at:
#Email: hemant.bhadoria09@gmail.com
#Phone : +91-8692958545





#Clearing the workspace

rm(list = ls(all.names = TRUE))


#After first run or if getting NAs please follow the steps below:
#1.paste the location of BGS_Cache folder in string format
#2.Uncomment the command below(i.e. remove the #)
#unlink('C:/Users/HP/Documents/BGS_Cache', recursive = TRUE)


#Comment the below installation out after first run to avoid installing the package again
#installing the package to source the price data from Yahoo finance.

install.packages('BatchGetSymbols') 


#loading the package

library(BatchGetSymbols)  


#first date taken so that the number of trading days > 251

first.date=Sys.Date()-400

#last date is today's date by default.It can be changed to any date we want(in such a case first.date would need to be changed accordingly)

last.date=Sys.Date()

#declaring the vector that will contain the return of the portfolio

return.port<-c()

#declaring the vector that will contain the return of a stock

return.stock<-c()


#Getting the user input for the number of stocks in the portfolio

n=readline('Enter the number of stocks in your portfolio: ')

#Calculating Portfolio Value

port.value<-as.numeric(n)*100


for(i in 1:n){                                              #main loop to perform the actual compuations
  
  s<-readline('Enter the ticker of the stock: ') # user inputs the ticker of the stock
  
  #sourcing the raw data from Yahoo! for an individual stock
  
  data.raw<-BatchGetSymbols(tickers=s,first.date=first.date, last.date=last.date)
  
  #getting the ticker data leaving behind the controls data
  
  data.tickers<-data.raw$df.tickers
  
  #default data is first.date first, so needs to be sorted to make the compuation lucid
  
  data.sorted<-data.tickers[order(data.tickers$ref.date, decreasing = TRUE) , ]
  
  #subsetting and getting only the data required for compuatation
  
  price.close<-data.sorted$price.close[1:251]
  
  
  for(j in 1:250){                                           #loop to compute the daily returns for a stock and arrive at returns vector
    
    return_for_day<-100*log(price.close[j]/price.close[j+1])     # Calculating daily returns and multiplying by 100 to get dollar values
    
    return.stock = append(return_for_day, return.stock)     # appending to create the returns vector
    
    
  }
  
  return.port<-cbind(return.stock,return.port)            # column binding the returns vector for individual stocks
  
  print('The return portfolio after this iteration is: ') 
  
  print(head(return.port,6))                              #printing first 6 elements of return portfolio just to check whether everything looks fine
  
   }


#computing the aggregated portfolio returns for each day

row.means<-rowMeans(return.port)

#computing the 99% quantile

VaR_1d<-quantile(row.means,probs=0.01,na.rm = TRUE)

#Scaling it up to 10-day VaR

VaR_10d<-sqrt(10)*VaR_1d



#Printing the results

#portfolio Value

print(paste0('The value of the portfolio is: ','$',port.value))

#1-day 99% VaR

print(paste0('The 99% 1-day VaR for the portfolio of Stocks is :','$', round(-VaR_1d,1)))

#10-day 99% VaR

print(paste0('The 99% 10-day VaR for the portfolio of Stocks is :','$', round(-VaR_10d,1)))

  
print("To be updated for more functionalities......")








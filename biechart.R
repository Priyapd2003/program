install.packages("ggplot2")
library("ggplot2")
data<-read.csv("D://23801915//samp.csv")
print(data)
k<-1
while(k>0){
  print("MENU")
  print("1.Pie Chart for Sales by region")
  print("2.Pie Chart for Sales percent by region")
  op<-readline(prompt="Enter Your Choice : ")
  switch(op,
         "1"={
           print("1.Pie Chart for Sales by region")
           sorted_data <- data[order(data$Sales, decreasing = TRUE), ]
           pie(sorted_data$Sales, radius = 1, labels = paste(sorted_data$Region,"(", sorted_data$Sales,")" ,sep = ""),
               main = "Pie Chart for Sales  by Region", col = rainbow(length(sorted_data$Sales)))
         },
         "2"={
           print("2.Pie Chart for sales% by region")
           sorted_data <- data[order(data$Sales, decreasing = TRUE), ]
           print(sorted_data)
           pieper<-round(100*sorted_data$Sales/sum(sorted_data$Sales),1)
           pie(sorted_data$Sales, radius = 1, labels = paste(sorted_data$Region, "(", pieper, "%)", sep = ""),
               main = "Pie Chart for Sales % by Region", col = rainbow(length(sorted_data$Sales)))
           
         }
  )
  c<-readline(prompt="Do you want to continue : ")
  k<-as.integer(c)
}




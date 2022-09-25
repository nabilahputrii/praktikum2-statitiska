library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'datanabila', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from bahanpraktikum1_datanabila;"
df <- dbGetQuery(con, myQuery)
View(df)
library(dplyr)
df<-filter(df,Gender=="P")
print(df)
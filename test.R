library(ggplot2)
library(googlesheets4)
#Read google sheets data into R
x <- read_sheet('https://docs.google.com/spreadsheets/d/165PIWJqsRTz1htjQ4Ibj2LyUnML20qUJGCJ0Q345NYU/edit?usp=sharing')
View(dt)
dt<-as.data.frame(x)
dt<-dt[,-1]
dt
colnames(dt)<-c("D","TFS","NP","NAcP","NAP","NPHD","NPAP","NBKS", "NPA")
p<-ggplot(data=dt, aes(x=D, y=nco),fill=D) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_bw()
p

library(ggplot2)
library(googlesheets4)
server <- function(input, output) {
  
  output$plot1 <- renderPlot({
    #Read google sheets data into R
    x <- read_sheet('https://docs.google.com/spreadsheets/d/165PIWJqsRTz1htjQ4Ibj2LyUnML20qUJGCJ0Q345NYU/edit?usp=sharing')
    dt<-as.data.frame(x)
    dt<-dt[,-1]
    colnames(dt)<-c("D","TFS","NP","NAcP","NAP","NPHD","NPAP","NBKS", "NPA","NAPC")
    p<-ggplot(data=dt, aes(x=D, y=NAP,fill=D)) +
      geom_bar(stat="identity")+
      geom_text(aes(label= NAP), vjust=1.6, color="white", size=3.5)+
      theme_bw()
    p
  })
  
  
  
}


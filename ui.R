

ui <- dashboardPage(
  dashboardHeader(title = "College Statistics"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Details", tabName = "widgets", icon = icon("th"),
               menuItem("Faculty Details", 
                        tabName = "FD")
      )
    )
  ),
  dashboardBody( 
    
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
             h2("College Level Statistics of College of Agriculture, Vellayani")
      ),
      
      # Second tab content
      tabItem(tabName = "FD",
              fluidRow(
                box(width = 12, 
                    title = "Assistant Professors", 
                    status = "warning", 
                    solidHeader = TRUE,
                    plotOutput("plot1", 
                               height = 250, 
                               width = "100%")),
              )
              
      )
    )
)
)

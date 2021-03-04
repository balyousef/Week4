library(shiny)
library(leaflet)

# Define UI for application
shinyUI(fluidPage(
        
        
        # Application title
        titlePanel("Week 4 Assignment"),
        
        sidebarLayout(
                sidebarPanel(
                        h3("Map specs:"),
                        h6("On the right side panel, there is a map container where we will display based on the checkboxes shown below.  Keeping the two checkboxes below unticked will not display any map in the container.  Checking the first one will show the world map. Checking the second one will show Saudi Arabia's map with some cities having location icon"),
                        checkboxInput("A","Show world map"),
                        checkboxInput("E","Zoom to Saudi Arabia and how some cities"),
                        h6("The map is interactive, you can move around it.  You can also use the plus and minus buttons to zoom in and out.")
                ),
                
                mainPanel(
                        h3("Main panel for the map"),
                        leafletOutput("Map")
                )
        )
))


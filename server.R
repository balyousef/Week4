library(shiny)

# Define server logic required 
shinyServer(function(input, output) {
        library(leaflet)
        #library(magrittr)
        
        output$Map <- renderLeaflet({
                set.seed(8000)
                SaudiMap <- data.frame(
                        lat = c(24.761100882770215,26.423385464263543,25.3880953676409,26.226107260975578,26.578269037958165),
                        lng = c(46.731848652813255,50.085227101163525,49.59314484435233,50.20946939996671,50.00331946402305))
                
                sites <- c("Riyadh","Dammam","Al Hofuf","Al Khobar","Al Qatif")
                x1<-SaudiMap %>% leaflet()
                ifelse(input$A,x1<-SaudiMap %>% leaflet() %>% addTiles(),"")
                ifelse(input$E,x1<-SaudiMap %>% leaflet() %>% addTiles() %>% addMarkers(popup = sites),"")
                x1
        })
})

brakingdistance <- function(speed, conditions) {
    if (conditions == "Normal") {
        normalconditions <- (speed / 3.6)^2 / (2*0.7*9.81)
        print(round(normalconditions, digits = 1))
    } else if (conditions == "Rainy") {
        rainyconditions <- (speed / 3.6)^2 / (2*0.4*9.81)
        print(round(rainyconditions, digits = 1))
    } else if (conditions == "Icy") {
        icyconditions <- (speed / 3.6)^2 / (2*0.15*9.81)
        round(icyconditions, digits = 1)
        print(round(icyconditions, digits = 1))
    } else print("N/A")
}

shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$speed})
        output$inputValue2 <- renderPrint({input$conditions})
        output$prediction <- renderPrint({brakingdistance(input$speed, input$conditions)})
    }
)




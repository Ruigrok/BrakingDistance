shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Braking Distance Prediction"),
        
        sidebarPanel(
            numericInput('speed', 'Speed (km/h)', 60, min = 0, max = 200, step = 1),
            selectInput('conditions', 'Weather Conditions', c("Normal", "Rainy", "Icy")),
            submitButton('Submit'),
            h5('Source of prediction model:'),
            a('https://en.wikipedia.org/wiki/Braking_distance'),
            h5('The weather conditions affect the friction coefficient. The coefficients used are:'),
                h5('Normal: 0.7'),
                h5('Rain: 0.4'),
                h5('Ice: 0.15'),
            h6('*Note: all coefficients assume a standard size car')
        ),
        mainPanel(
            h3('Results of prediction'),
            h4('Given a speed (in km/h) of:'),
            verbatimTextOutput("inputValue"),
            h4("And the following weather conditions:"),
            verbatimTextOutput("inputValue2"),
            h4('Your predicted stopping time in meters is: '),
            verbatimTextOutput("prediction")
        )
    )
)
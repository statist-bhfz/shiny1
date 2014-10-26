library(shiny)

sampleSize <- function(sigma, epsilon, power) {
      2*ceiling((1.64+qnorm((1-power/100)/2, 0, 1, lower.tail=F, log.p=F))^2*
                    (sigma/100)^2/(2*(0.223-epsilon/100)^2))
}

shinyServer(function(input, output) {
      output$size <- renderPrint({sampleSize(input$sigma, input$epsilon,
                                               input$power)})
})
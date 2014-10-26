library(shiny)

shinyUI(pageWithSidebar(
      headerPanel("Sample size calculation for bioequivalence trials 
                  (2x2x2 crossover design)"),
      sidebarPanel(
            h4('For sample size calculation you must specify the next parameters:'),
            
            numericInput('sigma', 'Intra-subject variability of AUC/Cmax, %', 
                         10, min = 10, max = 40, step = 1),
      
            numericInput('epsilon', 'Mean difference of AUC/Cmax, %', 
                   0, min = 0, max = 15, step = 1),
      
            numericInput('power', 'Power, %', 
                   80, min = 0, max = 100, step = 1),
            submitButton('Submit')
      ),
      
      mainPanel(
            h3('The total number of participants is'),
            verbatimTextOutput("size"),
            
            h4('The bioequivalence limit is 22.3% and level of significance is 5%'),
            
            h4('Reference: Chow S.C., Shao J., Wang H. Sample Size Calculations in Clinical Research')
            
      )
))
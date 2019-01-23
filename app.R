library(shiny)
library(tidyverse)
library(ggplot2)

data <- read.csv("data/cleaned_survey_data.csv", header=TRUE, stringsAsFactors = FALSE)

ui <- fluidPage(
  titlePanel("Mental Health in Tech Analyzer",
             windowTitle = "Mental Health in Tech Analyzer"),
  sidebarLayout(
     sidebarPanel(
       selectInput("questionInput", "Select a question", 
                   choices = c("1. Do you think that discussing a mental health issue with your employer would have negative consequences?"="mental_health_consequence",
                               "2. Would you be willing to discuss a mental health issue with your coworkers?"="coworkers",
                               "3. Would you be willing to discuss a mental health issue with your direct supervisor(s)?"="supervisor",
                               "4. Would you bring up a mental health issue with a potential employer in an interview?"="mental_health_interview",
                               "5. Do you know the options for mental health care your employer provides?"="care_options",
                               "6. Has your employer ever discussed mental health as part of an employee wellness program?"="wellness_program"), 
                   selected = "mental_health_consequence"),
       selectInput("countryInput", "Select country", 
                   choices = c("All", "United States", "Others"), 
                   selected = "All"),
       radioButtons("genderInput", "Select Gender",
                    choices = c("All", "Male", "Female"), 
                    selected = "All"), 
       selectInput("ageInput", "Select age group", 
                   choices = c("All" = 1, 
                                  "<= 35" = 2, 
                                  ">35" = 3), 
                   selected = 1)
     ),
     mainPanel(
       plotOutput('myplot')
     )
   )
)

server <- function(input, output) {
  
  dataFilter <- reactive({

    # select what is going to be analyzed based on 'questionInput' 
    filteredData <- data %>%
        select(Country, Gender, Age, input$questionInput)
    
    # filter data based on 'countryInput', which represents selected country 
    if(input$countryInput == 'All') {
      filteredData <- filteredData
    } else if(input$countryInput == 'United States') { 
      filteredData <- filteredData %>%
        filter(Country == 'United States')
    } else if(input$countryInput == 'Others') { 
      filteredData <- filteredData %>%
        filter(Country != 'United States')
    }
    
    # filter data based on 'genderInput', which represents selected gender
    if(input$genderInput == 'All') {
      filteredData <- filteredData
    } else {
      filteredData <- filteredData %>%
        filter(Gender == input$genderInput)
    }
    
    # filter data based on 'ageInput', which represents selected age group
    if(input$ageInput == '1') { 
      filteredData <- filteredData
    } else {
      if(input$ageInput == '2') {
        filteredData <- filteredData %>% 
          filter(Age <= 35)
      } else {
            filteredData <- filteredData %>% 
              filter(Age > 35)
        }
    }
    
  })

  # plot the bar chart based on filtered data
  output$myplot <- renderPlot({
    
    # initiate plot title text 
    if(input$questionInput == 'mental_health_consequence') {
      myTitle = 'Do you think that discussing a mental \nhealth issue with your employer would \nhave negative consequences?'
    } else if(input$questionInput == 'coworkers') {
      myTitle = 'Would you be willing to discuss a mental \nhealth issue with your coworkers?'
    } else if(input$questionInput == 'supervisor') {
      myTitle = 'Would you be willing to discuss a mental \nhealth issue with your direct supervisor(s)?'
    } else if(input$questionInput == 'mental_health_interview') {
      myTitle = 'Would you bring up a mental health issue \nwith a potential employer in an interview?'
    } else if(input$questionInput == 'care_options') {
      myTitle = 'Do you know the options for mental health \ncare your employer provides?'
    } else if(input$questionInput == 'wellness_program') {
      myTitle = 'Has your employer ever discussed mental \nhealth as part of an employee wellness program?'
    }
    
    dataFilter() %>% 
      ggplot(aes(x=!!sym(input$questionInput), fill=!!sym(input$questionInput))) + 
      geom_bar() +
      theme(legend.position="none") + 
      labs(x=input$questionInput, y='count', title=myTitle)
  })
}

shinyApp(ui = ui, server = server)


# Milestone 2 Writeup
-------------------------------------------------
# Team
| Name  | Slack Handle | Github.com |
| :------: | :---: | :----------: |
| Jingyun Chen | `@Jingyun` | [jchen9314](https://github.com/jchen9314) |
| Gilbert Lei | `@Gilbert Lei` | [gilbertlei](https://github.com/gilbertlei) |

## Rationale

As mentioned in the Proposal, we aim to build an interactive data visualization app that allows users, especially for HR at tech companies to explore a dataset of a mental health survey. The app will allow users to explore the attitudes of employees towards different potential problems related to mental health in the workplace by specifying their countries, age groups, size of companies, as well as the gender of employees.  

We decided to divide the landing page into two portions: a sidebar on the left side and a main panel on the right side. This way, a user will be able to easily navigate the app. On the left, we use standard drop-down boxes and radio-button box as filters. On the right, we use bar charts to illustrate the distribution of survey respondents' answers to each question.  

We mostly followed our initial plan in implementing this app. However, we made one change regarding what type of chart to use on the main panel. We initially planned to use pie charts, but we chose to use bar charts instead. We believe that bar charts are a better choice. It will be easier for users to discover the distribution of the variables instead of the proportion of the variables.

## Functionality

This app has been deployed [here](https://gilbertlei.shinyapps.io/dsci_532_mental_health_analyzer/). It can be accessed through any mainstream browsers on either PCs, cell phones or tablets. The app contains a landing page that has a sidebar on the left side and a main panel on the right side. There are four filters on the sidebar.  Users can filter the data by specifying country, gender, age group and/or company size. On the main panel, there are in total six bar charts. Each bar chart shows an analysis in one specific area related to employees' attitudes towards mental health issues in the workplace. Below are four screenshots which illustrate how to use each of the four filters on the sidebar.

<img src="../imgs/select-country.jpg" alt="Select country" style="width:282px;height:308px;">

<img src="../imgs/select-gender.jpg" alt="Select gender" style="width:282px;height:308px;">   

<img src="../imgs/select-age.jpg" alt="Select age" style="width:282px;height:308px;">

<img src="../imgs/select-company-size.jpg" alt="Select company size" style="width:282px;height:308px;">   

Usually, the six bar charts won't be able to show on a single page. We can use the scroll bar to scroll down the page and see bar charts that are not visible on the first page. The following screenshot shows what we can see when we scroll down the page.  

<img src="../imgs/scroll-down.jpg" alt="Scroll down" style="width:282px;height:308px;">  


## Next Steps

We want to make this app a user-friendly application that helps users solve their problems. Due to the short time frame, there are several tasks we don’t have enough time to implement in this period would consider in the future. First of all, in the current main panel, the title of each bar chart is essential as it is the description of the variable. However, the title is really long which users might not want to see while exploring the distribution. Thus, we decide to shorten the title for each chart and may add a feature that the concrete description of the variable can be shown in a floating window when users move their mouses to the title. Then, there are somewhat too many bar charts shown on one page and users have to scroll down the page to discover all the charts. In the future, we may split them into two pages by adding a new tab so as to help them discover different types of variables. Finally, as a visualization app, we will implement better aesthetics by adding a colorful background and using color panels that are more friendly to people with color-blinded, etc.

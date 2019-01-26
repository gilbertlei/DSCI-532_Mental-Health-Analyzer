# Mental Health Analyzer Project 
-------------------------------------------------
# Team
| Name  | Slack Handle | Github.com |
| :------: | :---: | :----------: |
| Jingyun Chen | `@Jingyun` | [jchen9314](https://github.com/jchen9314) |
| Gilbert Lei | `@Gilbert Lei` | [gilbertlei](https://github.com/gilbertlei) |

# Milestone Progresses
| Milestone | Deliverables  |
| ---- | ------------------------------- |
| Milestone 1 | [Proposal](docs/milestone1-proposal.md) |
| Milestone 2 | [Milestone 2 Writeup](docs/milestone2-writeup.md)  |
|  | [Deployed Shiny App](https://gilbertlei.shinyapps.io/dsci_532_mental_health_analyzer/) |
|  | [Shiny App Source Code](https://github.com/UBC-MDS/DSCI_532_Mental_Health_Analyzer/blob/master/app.R)      |  
| Milestone 3 | [Milestone 3 writeup](docs/milestone3-writeup.md) |
|  | [feedback to "DSCI532\_violent\_crime\_app"](https://github.com/UBC-MDS/DSCI532_violent_crime_app/issues/25) |
|  | [feedback to "DSCI\_532\_Crime\_Blei7\_simchi"](https://github.com/UBC-MDS/DSCI_532_Crime_Blei7_simchi/issues/11) |

# Milestone 3 Writeup

## Reflection on the usefulness of the feedback you received.

We received valuable feedback from reviewers (Joel Ostblom (TA), Simon Chiu, Bailey Lei, Alden Chen, and Margaret Wu) this week. The feedback is splitted into the following three pieces.

**Comments on what worked**  

In terms of "what worked", all reviewers agreed that our app has an intuitive interface. They found it is easy to use and could use it in the way it was designed for. Also, the reviewers enjoyed the color scheme for our app.

**Comments on what could be improved**  

Regarding to "what could be improved", one of the most important feedback is about the layout of the main panel. There were six bar charts displayed in three rows and two columns in the main panel in milestone 2. Reviewers said there are too many graphs to look at. What makes things worse is that they have to use the scroll bar to explore two charts that are not fitted on the first screen. Based on the comments, we decided to add a “question” filter on the sidebar so that there would be only one bar chart (i.e. the distribution of one question) shown in the main panel.  

Another important feedback is about the result from data filtering. Reviewers found that, with a certain combination of gender, age group, and company size, there were a set of charts that only have one bar for a chart or nothing at all. The reason for this problem is that after data filtering, there is only a limited amount of data or even no data to be considered in one plot. We decided to make two changes to these filters: remove the “company size” filter, re-group the options in “country” filter.

Reviewers also commented on the x-axis label and y-axis label. Previously, the app used feature names as the x-axis labels. It looked unprofessional. Our team decided to remove both x-axis and y-axis labels because, as one reviewer said, they are not quite necessary.  

One reviewer noticed that the y-axis of some charts sometimes show fractions instead of integer numbers. Since y-axis is the count of people, fractions do not make sense. We decided to update our code to solve this problem.  

Lastly, there is one comment on the small font size of texts on both axes of each chart. We accepted the suggestion and decided to make the texts bigger.  

**Other feedback**   

One reviewer commented that it would be easier to read a short title instead of a long one on each chart.  We understood the point but decided not to shorten these titles. The reason is that the titles are questions and it is better to keep them as is so that users can fully understand what each chart talks about.  

There is also a comment on "using reshape and faceting instead of repeating the same code for the bar plot 6 times”. This is a valid point. However, since we have decided to show only one bar chart in the main panel, there is no need to either repeat the same code or use faceting.  

One reviewer asked whether it is possible to select multiple items from the (country) drop-down menus in the future. After discussion, our team decided not to implement this feature. Actually, due to the limited data entries in our data set, we decided to provide only three options (“All”, “United States”, “Others”) in the “country” filter.  

Our team appreciated all the feedback from the reviewers. They helped us to make our app better.  

## Reflection on how your project has changed since Milestone 2, and why.  

Our objective for this project has not changed since Milestone 2. However, we did make some big changes to our app since then. We discuss two of the most important changes below.  

One big change is the layout of the main panel. Previously, we show six bar charts in the main panel. Our new design shows only a bar chart. We made this change based on feedback from reviewers. The detailed reason for this is mentioned in the last section of this writeup.  

Another big change is about the filters we used.  We added “question” filter in the sidebar so that we don’t have to show six bar charts at the same time. On the other hand, due to the limited data entries in our data set, we eliminated the “company” filter.  

We are happy with what we have achieved so far. If we have a more comprehensive data set, we may add every country as an option in the “country” filter, instead of grouping them all together (except the United States). With a more comprehensive data set, we may also add a function to compare country to country side by side.

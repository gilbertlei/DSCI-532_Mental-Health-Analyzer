# Milestone 3 Writeup
-------------------------------------------------
## Team
| Name  | Slack Handle | Github.com |
| :------: | :---: | :----------: |
| Jingyun Chen | `@Jingyun` | [jchen9314](https://github.com/jchen9314) |
| Gilbert Lei | `@Gilbert Lei` | [gilbertlei](https://github.com/gilbertlei) |

### Reflection on the usefulness of the feedback you received.
We received many feedbacks from reviewers (Joel Ostblom (TA), Simon Chiu, Bailey Lei, Alden Chen and Margaret Wu) this week. These feedbacks, all are valuable, can be grouped into three areas.

**Comments on what worked**  
Regarding what worked, all reviewers agreed that our app has an intuitive interface. They find it easy to use and could use it in the way it was designed for.  
All reviewers also like the color scheme. They found it’s clean, colorful, and at the same time, not too complicated.  

**Comments on what could be improved**  
Regarding what could be improved, one of the most important feedbacks is about the layout of the main panel. Currently, we display six bar charts in 3 rows and 2 columns in the main panel. Reviewers said unanimously six bar charts are too many to look at. What makes things worse is that they have to use scroll bar to see two charts not visible on the first page. Our team agreed with this comment and decided to add a “question” filter in the sidebar and show only one bar chart in the main panel. Users can use this filter to choose one of the six questions and see the analysis result on the right.
Another important feedback is about result from data filtering. Reviewers found that, with a certain combination of gender, age group and company size, they had a set of charts that only have one bar for a chart or nothing at all. The reason for this problem is that after data filtering, there is limited or even no data to show. We decided to make three changes to these filters: remove “company size” filter, re-group the options in “country” filter, and make “age group” filter a slide bar instead of a dropdown menu.
Reviewers also commented on the x-axis label and y-axis label. Previously, the app used feature names as the x-axis lable. It looked unprofessional. Our team decided to remove both x-axis and y-axis labels because, as one reviewer said, they are not quite necessary.
One reviewer noticed that the y-axis of some bar charts sometimes show fraction number ticklabels. Since y-axis is the count of people, fractions do not make sense. We will update our code to correct this problem.
Lastly, there is one comment on the size of the axes label and axes ticklabel text. We accept the suggestion and will make the axes label and ticklabels bigger.

**Other feedback**  
One reviewer commented that the titles of the charts are too long and suggested to shorten them. We understand the point but decided not to shorten these titles. The reason is that These titles are questions and it is better to keep them as is so that users can fully understand what each charts is talking about.
There is also a comment to “use reshape and faceting instead of repeating the same code for the bar plot 6 times”. This is a valid point. But since we have decided to show only one bar chart in the main panel, there is no need to either repeat the same code or use faceting.
One reviewer asked whether it is possible to select multiple items from the (country) drop down menus in the future. After discussion, our team decided not to implement this feature. Actually, due to the limited data entries in our data set, we will provide only three options (“All”, “United States”, “Others”) in the “country” filter.
Our team appreciated all the feedback from all the reviewers. They helped us to make our app better.  

### Reflection on how your project has changed since Milestone 2, and why.  
Our objective for this project has not changed since Milestone 2. However, we did made some big changes to our app since then. We will highlights two of the most important changes in below.
One big change is the layout of the main panel. Previously, we show six bar charts in the main panel. Our new design shows only bar chart. We made this change based on feedback from reviewers. The detailed reason for this is mentioned above.
Another big change is about the filters we used.  We added “question” filter in the sidebar, so that we don’t have to show six bar charts at the same time. On the other hand, due to the limited data entries in our data set, we eliminated “company” filter.
We are happy with what we have achieved so far. If we have a more comprehensive data set, we may add every country as an option in the “country” filter, instead of grouping them all together (except United States). With a more comprehensive data set, we may also add a function to compare country to country side by side.

# Machine Learning

## Segment One

For this assignment we have chosen to use linear regression as our model. 
Using linear regression we will explore whether we have experienced an increase in domestic violence since the establishment of shelter-in-place orders in California, and if so the rate at which it has increased. To do this, we will be using the number of reported offenses for domestic violence over the course of time.
With this linear regression model we also hope to predict the continued impact the current situation has on domestic violence should shelter-in-place orders continue for a uncertain amount of time. 
Based on the data available for victim demographics, we may also apply the use of k-clustering to draw additional conclusions regarding the impact of the coronavirus on crime. 

## Segment Two

Description of preliminary data preprocessing: There were 3 datasets used in the machine learning model. The first was 2020 UCR Part 1 crime data for Modesto Police Department for the linear regression plotting. With this, there was much exploration and clean-up done. The Date field object type was changed to datetime in order to group the number of crimes by week. Several new tables were created to perform linear regression on individual classifications to find what types of crimes have increased and may continue to increase. The next data sets were the Unemployment and FBI UCR Crime datasets. Preprocessing for these involved merging the two datasets, which were surprisingly clean and formatted similarly.

Description of preliminary feature engineering and preliminary feature selection, including their decision-making process: For the unemployment and FBI crime datasets, features were scaled so as not to skew. Features were chosen in this set mainly to find relationships, there were not many other fields to choose from. One field, the unemployement rate of the population, was calucualted to find the total number of unemployed persons based on the reported population for that year in order to explore any uses where knowing the approximate number of unemployed persons is necessary.

Description of how data was split into training and testing sets: At this time we have only used linear regression and clustering algorithms. Neither have required training and testing sets.

Explanation of model choice, including limitations and benefits: Linear Regression was chosen to observe what changes in crime are occuring and the direction it may be going in. One limitation currently is that we are relying on a relatively small dataset at this time. It has provided some insight into the direction crime has taken even though the numbers plotted by week appear to be scattered. We are also using clustering algorithms to draw out conclusions from the unemployment and FBI crime data, currently we are looking a small group of features which may be a limitation and we may be limited by what we can actually glean from this data, however with almost 40 years of data we may be able to identify some relationships and patterns.
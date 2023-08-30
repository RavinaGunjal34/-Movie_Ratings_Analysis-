#TASK 04 : MOVIE RATINGS ANALYSIS
.
.
.
.
.

#Load necessery library
>library(dplyr)
>library(ggplot2)
>library(readxl)


#Load the Dataset
>DATA<-read_excel("C:/Users/DELL/Downloads/Camera Roll/Documents/movie_rating.xlsx")

#Print the Dataset
>print(DATA)


#Data Exploration and cleaning
>summary(DATA)               #summary statistics
>head(DATA) 
                   
#DIMESIONS
>dim(DATA)
>nrow(DATA)
>ncol(DATA)

>colnames(DATA)            

#summary of specific column
>summary(DATA$Rating)


#to check data structure
>str(DATA)

#Frequency count of specific category
>DATA%>%count(Rating)
>DATA%>%count(Runtime)

#To check the datatype
>DATA%>%glimpse()


#calculate the average rating and identify highly rated movie
>average_rating<-mean(DATA$Rating)                                                                          /                                                                              -                                                                              
> highly_rated_movie<-DATA%>%filter(Rating>8)


#Data Visualization

#Histogram of movie ratings

>ggplot(DATA,aes(x=Rating))+geom_histogram(binwidth=0.5,fill="pink",color="black")+labs(title="Distribution of Movies Ratings",x="Rating",y="Frequency")

#Create a box plot comparing Year and Title

>ggplot(DATA,aes(x=Year,y=Title))+geom_boxplot(fill="lightblue")+labs(title="Box Plot of Titles by Year",x="Year",y="Title")+theme(axis.text.x=element_text(angle=45,hjust=1))






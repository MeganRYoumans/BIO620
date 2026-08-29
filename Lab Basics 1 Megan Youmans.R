## Megan Youmans, Lab 1 R Basics
## Q1
12 %% 5
## Q1 Remainder = 2
## Q2
x <- 1:10,2
y <- x^-1,3
plot(x,y)
## Q3
## First selects 1-5 using 1:5, sets a repeat (3,5) repeat 3 times to 5
## Seond selects 1-5 using 1:5, sets repeat at (1:5) so 1 is produced one time, 2 is produced two times, 3 three, 4 four, and 5 five. Setting how many times to repeat the number in the sequence
## Third selects 1-5 using 1:5, repeats it at c() interval as (1,2,3,2,1) so 1 is one time, 2 is two times, 3 is three times, 4 is two times, 5 is one time.
## Fourth sets the letters of "A", "B", "C", including quotations then sets the repeat interval of (4,3,2) so "A" four times, "B" three times, "C" two times.
## Q4
y <- seq(0,100,2)
y
sum(y)
mean(y)
sd(y)
var(y)
median(y)
max(y)
min(y)
summary(y)
## Q5 - Have to set the logic for what numbers will correspond to which request
y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)
numbers <- y
is_even <- numbers %% 2 == 0
is_even
even <- which(is_even)
even
is_odd <- numbers %%2 !=0
is_odd
odd <- which(is_odd)
odd
## Q6
## Q6 A
400/17
## Q6 B - note remember to use * for multiplication 
12 * (6*15)/(40/21)
## Q6 C - for sq root can use sqrt() or for cubed or more turn into fraction and muliply to power
250^(1/3)
## Q6 D
log10(1000)
## Q7 - use rep(c) instead of seq for string sequence 
seq(0,16,4)
seq(0.3,1.5,0.3)
rep(c("Tropics","Temperate","Boreal"),c(3,3,3))
## Q8
x <- c(5,3,8,2,9,3,6,9,1,0,2,7)
sum(x)
mean(x)
length(x)
## Q9
x <- c(3,9,6,1,9,4,7,8,2,6,3,8,0,2,5)
sort(x)
rev(sort(x))
## Q10 
## Q10 A
## setwd gets or sets a working directory. It tells R where it should read and write files from. Ex setting it to the C drive on your PC and a file path to a specific folder
## arguments get(wd) and setwd(dir)
## Q10 B 
## readtable reads a file in table format and then uses the data to create a data frame, with lines and variables set
## arguments can be file, header, sep or field separator, quote, dec or decimal point, numberals, row.names, col.names, as,is, na.strings, colClasses, nrows, skip, check.names, fill, strip.white, blank.lines.skip, comment.char, allowEscapes, flush, stringsAsFactors, fileEncoding, encoding, text, skipNul, and more. 
## Q10 C 
## functions to get or set the names of an object
## arguments x is an R object, value is a character vector of up to same length as x or NULL, names(x), names(x) <- value 
## Q10 D
## attach attaches a database to the R search path, example bringing something into the local network data wise
## arguments, what, pos or position, name, warn.conflicts 
## Q10 E 
## range returns a vector with the minimum and maximum of all given arguments
## arguments, ... any numeric or character objects, na.rm any NA's omitted, finite, all non-finite elements omitted 
## Q11
apes <- read.csv('/Users/meganyoumans/Desktop/Adelphi Coursework/Statistical Modeling/Datasets/orangutanCSV.csv')
apes
## names of columns 
names(apes)
summary(apes)
## structure of a dataset (observations (rows), and variables (columns))
str(apes)
## show True or False for whether something in continuous (numbers) or categorical (drop down text example)
sapply(apes, is.numeric)
sapply(apes, is.character)
summary(apes)
## fix the data alignment issue in csv, turn the data into proper column formatting since it was showing up all in one column 
apes <- read.csv('/Users/meganyoumans/Desktop/Adelphi Coursework/Statistical Modeling/Datasets/orangutanCSV.csv', sep = ".")
apes <- read.csv('/Users/meganyoumans/Desktop/Adelphi Coursework/Statistical Modeling/Datasets/orangutanCSV.csv', sep = "\t")
apes
names(apes)
## column names fixed, then looking for something in the column data using $ to select from data set apes
apes$location == "Borneo"
## finding only the males extracted - setting males as defined by apes data set, then sex inside apes data set, equal to only "males"
males = apes[apes$sex == "male",]
males
## continuing to sort the data for males only so selecting males as data set and then what you want, then selection from males, and sorting
males[order(males$weight.kg, decreasing = TRUE),]
apes[order(apes$weight.kg, decreasing = TRUE),]
## lightest weight of ALL orangutans is 30 kg female 
females = apes[apes$sex == "female",]
females
## still using $ to select data from the female data set
range(females$weight.kg)
apes
## had an issue here where I overwrote "apes" with other data so when I was trying to do the sumatra data pull it was giving an error so I had to re-run the apes = csv document and it's fixes 
apes[apes$location == "Sumatra",]
## can just do below and don't have to sum the sumatra data to get to it 
mean(apes$weight.kg[apes$location == "Sumatra"])
## summing tool use 
sum(apes$Tool.use == "TRUE")
## still not exactly clear when to include a , or no , between brackets or parethesis to make something work 
## finding weight of the three largest females 
females
## start with [ instead of ( when it's going to include both and then use ),] (,) is included here at end to separate
females = females[order(females$weight.kg, decreasing = TRUE),]
females
## no , here at the end? 
## summing the weight of females data set and selecting the first through the third data points to sum
sum(females$weight.kg[1:3])
## Q12
## sampling example sample(x, size, replace = FALSE, prob = NULL) 
organisms <- c("Bird", "Bat", "Giraffe", "Lion", "Hyena", "Vole", "Lizard", "Pufferfish", "Whale", "Ape")
sample(organisms, 10, replace = TRUE)
sample(organisms, 10, replace = TRUE)
sample(organisms, 10, replace = FALSE)
sample(organisms, 10, replace = FALSE)
## replacing = true means that animals can be repeated or selected a second time as a result, versus no replacement which removes them from the pool of answers
## Baseball data import
## Q13
baseball <- read.csv('/Users/meganyoumans/Desktop/Adelphi Coursework/Statistical Modeling/Datasets/baseballCSV.csv')
baseball
## fix to data again same as orangutan data
baseball <- read.csv('/Users/meganyoumans/Desktop/Adelphi Coursework/Statistical Modeling/Datasets/baseballCSV.csv', sep = ".")
baseball <- read.csv('/Users/meganyoumans/Desktop/Adelphi Coursework/Statistical Modeling/Datasets/baseballCSV.csv', sep = "\t")
baseball
##Column names
names(baseball)
## Sum total of how many games played, won and lost respectively
sum(baseball$Games)
sum(baseball$Wins)
sum(baseball$Losses)
## greatest positive and greatest negative value
max(baseball$Wins)
max(baseball$Losses)
## combining to find total distance between max and max pos and neg...? 
difference <- baseball$Wins - baseball$Losses
difference
## trying to find the teams that have the greatest difference from 13C
names(baseball)
## had trouble getting this to work and ended up being more simple than I thought
max(difference)
min(difference)
##start with team name, which difference is the max (what team), same for min
baseball$Franchise[which(difference == max(difference))]
baseball$Franchise[which(difference == min(difference))]
## 3 teams Red sox highest win and loss percentage against 
sorted_wins_sox <- baseball[rev(order(baseball$Win.Loss.Percent)),]
sorted_wins_sox$Franchise[1:3]
## or... which shoes the actual percent data in addition to team name
sorted_wins_sox[1:3, c("Franchise", "Win.Loss.Percent")]
## 3 teams Rex sox lowest win loss percentage against
## doesn't need rev(reverse) because it's already in ascending order lowest first standard
sorted_loss_sox <- baseball[order(baseball$Win.Loss.Percent),]
sorted_loss_sox
sorted_loss_sox$Franchise[1:3]
sorted_loss_sox[1:3, c("Franchise", "Win.Loss.Percent")]
## ratio of runs allowed to runs scored and plotted 
## vector math to divide the ratio columns
ratio <- baseball$Runs.Allowed / baseball$Runs.Scored
plot(ratio, baseball$Win.Loss.Percent)
## the above shows a plot with a downward trend of win loss percent as ratio increases 
## adding a trendline - lm() for linear model
## ~ = predicted by? so trendline the win percentage as predicted by the radio
trend <- lm(baseball$Win.Loss.Percent ~ ratio)
abline(trend, col = "red")
## have to add this for the line to show up, and give it a color 
summary(trend)
## slope - showing down trend here with the data
## r-squared? == number between 0-1 that shows variation in win percent, closer to 1 = stronger, so stronger relationship here to the scatter plot data because a lot of it falls on or close to the line rather than being random
## you also get shown a p-calue here, value under 0.05 is significant = here the numbers mean it's unlikely by chance so relationship is not random, it has evidence of being significately related 
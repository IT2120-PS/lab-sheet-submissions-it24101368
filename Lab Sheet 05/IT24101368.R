setwd("C:\\Users\\it24101368\\Desktop\\IT24101368_LAB5")
getwd()

#1
# Import the data set
Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE)

#2
#Rename the column to something simple
colnames(Delivery_Times) <- c("Time")

#Define 9 class intervals from 20 to 70
breaks <- seq(20, 70, length.out = 10)   # 9 intervals → 10 breakpoints

#Draw histogram
hist(Delivery_Times$Time,
     breaks = breaks,
     right = FALSE,
     col = "black",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     border = "white")


#3
#Values spread between 20 and 67.
#More concentration around 35–55 minutes.
#The histogram will show a unimodal distribution, 
#slightly right-skewed (longer tail toward higher times).

#4
# Rename the column to something simple
colnames(Delivery_Times) <- c("Time")

# Frequency table
freq <- hist(Delivery_Times$Time,
             breaks = breaks, right = FALSE, plot = FALSE)

# Cumulative frequencies
cum_freq <- cumsum(freq$counts)

# Plot ogive
plot(breaks[-1], cum_freq, type = "o", pch = 16,
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "darkgray")
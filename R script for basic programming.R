
#1.An R script that prompts the user to enter two numbers and calculates their sum. 


x<-readline ("Enter the first number:")
a<- as.numeric(x)
y<-readline("Enter the second number:")
b<- as.numeric(y)
result<-a+b
cat("The sum of the given two numbers is:",result)


#2.An R script that reads a CSV file named "data.csv" containing student names and their corresponding test scores. 
#It also calculates the average score and display it along with the highest and lowest scores.

x<-read.csv("/Users/sumaiyairshad/Desktop/Data.csv")
View(x)

a<-mean(x$TEST.SCORES)         #to calculate average
cat("The average score of the students is:",a)

b<-min(x$TEST.SCORES)           #to calculate lowest score
cat("The lowest score is:",b)

c<-max(x$TEST.SCORES)            #to calculate highest score
cat("The highest score is:",c)


#3.An R script that generates a random integer between 1 and 10
#and asks the user to guess the number. 
#Provide feedback to the user if their guess is too high or too low,
#and continue until they guess the correct number.

num <- round(runif(1) * 10, digits = 0)
guess <- -1

print("Guess a number between 0 to 10")
while(guess!=num)
{
  guess<-readline(prompt="Enter the integer:")
  if(guess==num){
    cat(num,"is correct")
  }else if(guess<num) {
    cat("It is too low")
  } else if (guess>num){
    cat("It is too high")
  }
}

##4.An R script that defines a function called "factorial" which takes an integer as input
#and calculates its factorial. 
#We can test the function by calling it with different input values.

num<-as.integer(readline(prompt="Enter a number:"))
fact=1

if(num < 0){
  print("Factorial does not exist for negative number")
}else if (num==0){
  print("The factorial of 0 is 1")
}else{
  for(i in 1:num){
    fact=fact*i
  }
  print(paste("The factorial of given number is:",fact))
}
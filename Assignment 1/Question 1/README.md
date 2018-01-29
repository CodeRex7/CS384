# Question 1
Through the simulation, show that probability of getting HEAD by tossing a fair coin is about 0.5. Write your observation from the simulation run.


As a solution, I have implemented a method coinToss, which generates random numbers between 0 and 1 based on the normal distribution. It then rounds the value to 0 or 1, with 1 indicating heads. The number of heads vs the number of tosses is then plotted which then approaches 0.5 as more tosses are made. Ideally, this should also be represented in a binomial distribution, but has not been implemented yet.

use CreditcardSql
go
select * from creditcard

Question 1; What is the total amount of transaction?
select sum(amount) as TotalTransactions from creditcard 

Question 2; What are the top 5 fraudulent transaction?
select top 5 amount, time_seconds from creditcard 
where class = 1
order by amount desc

Question 3; What are the total fraudulent transactions?
select sum(amount) as TotalFraud from creditcard
where class = 1

Question 4; What is the least amount made in the dataset with a response variable(class) of 1
select min(amount) from creditcard where class = 1

Question 5;What is the average transaction time in the dataset?
select round(avg(time_seconds), 0) from creditcard
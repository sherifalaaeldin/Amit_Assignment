use sherif_data
select* from Supermarket
-- 1) What is value count of Branch?
select  Branch, count(*) No_Branch from Supermarket group by Branch
--2)
select  Product_line, count(*) as No_Product from Supermarket group by Product_line
--3)
select Product_line, max(Total) from Supermarket group by Product_line order by max(Total) DESC
--4)
select Product_line, max(gross_income) from Supermarket group by Product_line order by max(gross_income) DESC 
--5)
select Branch, max(Total) from Supermarket group by Branch order by max(Total) DESC
--6)
select Branch, max(gross_income) from Supermarket group by Branch order by max(gross_income) DESC
--7)
select Product_line, max(cogs) from Supermarket group by Product_line order by max(cogs) DESC
--8)
select Branch, max(cogs) from Supermarket group by Branch order by max(cogs) DESC

--9)
select Invoice_ID,Date, Time, max(Total) from Supermarket group by Invoice_ID,Date,Time order by max(Total) DESC offset 0 rows fetch next 1 rows only
--10)
--11)
select max(Total) as max_total, max(Tax_5) as max_tax, max(gross_margin_percentage) as max_gmp, max(gross_income) as max_gross, max(Rating) as max_rating from Supermarket
--12)
select City, count(Invoice_Id) from Supermarket group by City
--13)
SELECT Gender ,Customer_type , COUNT(Invoice_ID) from supermarket GROUP BY Gender,Customer_type
--14)
SELECT Gender ,Customer_type , AVG(gross_income) from Supermarket GROUP BY Gender,Customer_type
--15)
SELECT Product_line , sum(Total) from Supermarket GROUP BY Product_line
--16)
SELECT Gender,Branch, COUNT(Gender) from supermarket GROUP BY Gender,Branch
--17
select City,Gender, sum(Total) as sum_total, avg(Total)as avg_Total from Supermarket group by City, Gender order by Gender DESC
--18)
select City,Customer_type,Gender,Product_line, sum(Total) as sum_total, avg(Total)as avg_Total from Supermarket group by City,Customer_type,Gender,Product_line order by Gender DESC
--19)
select City,Customer_type,Gender,Product_line, max(Rating) as max_Rating from Supermarket group by City,Customer_type,Gender,Product_line order by Gender DESC
--20)
select City,Customer_type,Gender,Product_line, max(Quantity) as max_Quantity from Supermarket group by City,Customer_type,Gender,Product_line order by Gender DESC
--21)
select City,Customer_type,Gender,Product_line, max(Tax_5) as max_Tax from Supermarket group by City,Customer_type,Gender,Product_line order by Gender DESC 
--22)
select City,Customer_type,Gender,Product_line, max(Total) as max_Total from Supermarket group by City,Customer_type,Gender,Product_line order by Gender DESC 
--23)
select City,Customer_type,Gender,Product_line, max(Unit_price) as max_price from Supermarket group by City,Customer_type,Gender,Product_line order by Gender DESC 
--24)
select City,Customer_type,Gender,Product_line, max(Unit_price) as max_price, sum(Unit_price) as sum_price,max(Quantity) as max_Quantity, sum(Quantity) as sum_Quantity,max(Tax_5) as max_Tax, sum(Tax_5) as sum_Tax,max(Total) as max_Total, sum(Total) as sum_Total from Supermarket group by City,Customer_type,Gender,Product_line order by Gender,Product_line,City DESC 

--25)
select City,Customer_type,Product_line,Payment, max(Unit_price) as max_price, sum(Unit_price) as sum_price,max(Quantity) as max_Quantity, sum(Quantity) as sum_Quantity,max(Tax_5) as max_Tax, sum(Tax_5) as sum_Tax,max(Total) as max_Total, sum(Total) as sum_Total from Supermarket group by City,Customer_type,Product_line,Payment order by Product_line,City,Payment DESC 

--26)
select City,Customer_type,Product_line, Date,Payment, sum(gross_margin_percentage) as sum_grossmp, avg(gross_margin_percentage) as avg_grossmp,sum(gross_income) as sum_gross, avg(gross_income) as avg_gross  from Supermarket  group by City,Customer_type,Product_line,Date,Payment order by Date ASC

--27)
select Gender,Product_line,Payment, max(Rating) as max_Rating, max(Total) as max_Total, max(gross_margin_percentage) as sum_grossmp, max(gross_income) as max_gross  from Supermarket  group by Gender,Product_line,Payment order by Gender, Product_line, Payment ASC


select City,Customer_type,Product_line, Date,Payment, max(gross_income) as max_gross from Supermarket  group by City,Customer_type,Product_line,Date,Payment order by Date ASC

--28) 
select Gender,Product_line,Payment, max(Quantity) as max_Qauntity, max(Total) as max_Total, max(gross_margin_percentage) as sum_grossmp, max(gross_income) as max_gross  from Supermarket  group by Gender,Product_line,Payment order by Gender, Product_line, Payment ASC



select Date, avg(Total) from Supermarket  group by Date order by Date ASC


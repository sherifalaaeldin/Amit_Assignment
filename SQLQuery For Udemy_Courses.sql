use sherif_data
select *
from udemy_courses
--(1) what the title_courses in business finance?
select course_id,course_title, subject, price
from udemy_courses
where subject like 'Business Finance'
order by subject DESC

--(2) what is the max of  price for business finance course?
select max(price) 
from udemy_courses
where subject like 'business finance'

--(3) what is the mean of price for business finance course?
select avg(price) 
from udemy_courses
where subject like 'business finance'

use sherif_data
select*
from udemy_courses

--(4) what is the course_title that it's num_subscribers more than 2000 ?

select course_title, num_subscribers
from udemy_courses
where num_subscribers >2000 

--(5)what is the course_title that it's num_subscribers between 4000 and 8000 ?

select course_title, num_subscribers
from udemy_courses
where num_subscribers between 4000 and 8000


--(6)what is the course_title that it's subject belong the graphic design and it's num_subscribers between 6000 and 7500 and sort theme by DESC?

select course_title,subject, num_subscribers
from udemy_courses
where subject like 'Graphic Design' and num_subscribers between 6000 and 7500
order by subject DESC

--(7) what is the course_title that it's num_subscribers more than 4900 and less than 5000 and sort by price DESC ?

select course_title,subject, num_subscribers, price
from udemy_courses
where num_subscribers >4900 and num_subscribers < 5000 
order by price DESC

-- (8) what is the count  of course?

select distinct count(course_title)
from udemy_courses 

select max(price)
from udemy_courses 

select avg(price)
from udemy_courses 

select count(num_reviews)
from udemy_courses 
where subject like 'Business Finance'

--(9) what is the max price of course in range (190:200) and count of level and sort it by price in subject Musical Instrments and Business Finance?
select  course_title, subject, published_timestamp, max(price) as max_price, count(level) as count_level
from udemy_courses
where subject like 'Musical Instruments' or subject= 'Business Finance'
group by course_title, subject, published_timestamp
having max(price) >190 and max(price) < 200
order by max(price) DESC

-- (10) what is the three max price of course more than 190 and count of level and sort it by price in subject	?
select  course_title, subject, published_timestamp, max(price) as max_price, count(level) as count_level
from udemy_courses
where subject like 'Musical Instruments' or subject= 'Business Finance'
group by course_title, subject, published_timestamp
--having max(price) >190 
order by max(price) DESC
offset 0 rows fetch next 3 rows only


--(11) what is the max price of course in range (190:200) and count of level and sort it by price in subject Musical Instrments?

select  course_title, subject, published_timestamp, max(price) as max_price, count(level) as count_level
from udemy_courses
where subject like 'Musical Instruments' 
group by course_title, subject, published_timestamp
having max(price) >190 and max(price) < 200
order by max(price) DESC


--(12)what is the subject that it's num_subscribers more than 9500 and sort by num_subsribers ?

select subject, num_subscribers
from udemy_courses
where num_subscribers > 9500 and subject like 'Musical Instruments'
order by num_subscribers DESC

select *
from udemy_courses

--(13) what is the mix of reviws ?

select course_title, subject, max(num_reviews) as max_reviews
from udemy_courses
group by course_title, subject
order by max_reviews DESC

--(14) what is the first mix of reviws of course and subject ?

select course_title, subject, price, max(num_reviews) as max_reviews
from udemy_courses
group by course_title, subject, price
order by max_reviews DESC
offset 0 rows fetch next 1 rows only

select course_title, subject, price, max(num_subscribers) as max_subscribers
from udemy_courses
group by course_title, subject, price
order by max_subscribers DESC
offset 0 rows fetch next 1 rows only

select course_title, subject, price, max(num_subscribers) as max_subscribers
from udemy_courses
where subject = 'Web Development'
group by course_title, subject, price
order by max_subscribers DESC
offset 0 rows fetch next 1 rows only


select course_title, subject, price, max(num_subscribers) as max_subscribers
from udemy_courses
where subject = 'Musical Instruments'
group by course_title, subject, price
order by max_subscribers DESC
offset 0 rows fetch next 1 rows only

select course_title, subject, price, max(num_subscribers) as max_subscribers
from udemy_courses
where subject = 'Graphic Design'
group by course_title, subject, price
order by max_subscribers DESC
offset 0 rows fetch next 1 rows only

select course_title, subject, price, max(num_subscribers) as max_subscribers
from udemy_courses
where subject = 'Business Finance'
group by course_title, subject, price
order by max_subscribers DESC
offset 0 rows fetch next 1 rows only



--(15) what is the fifth mix of reviws of course, subject, price, no.lectures ?

select course_title, subject, price, num_lectures, max(num_reviews) as max_reviews
from udemy_courses
group by course_title, subject, price, num_lectures
order by max_reviews DESC
offset 0 rows fetch next 5 rows only

--(16) what is the fifth mix of reviws of course, subject, price, no.lectures ?

select course_title, subject, price, num_lectures, max(num_reviews) as max_reviews, count(course_id) as count_course 
from udemy_courses
group by course_title, subject, price, num_lectures
order by max_reviews DESC
offset 0 rows fetch next 5 rows only

--(17) what is the no. course_id where get the web development course & the business finance & the musical instruments & graphic instruments?

select count(course_id) as count_student
from udemy_courses
where subject like 'Web Development'

select count(course_id) as count_student
from udemy_courses
where subject like 'Business Finance'

select count(course_id) as count_student
from udemy_courses
where subject like 'Musical Instruments'

select count(course_id) as count_student
from udemy_courses
where subject like 'Graphic Design'


select *
from udemy_courses

--(18) 
select course_title, subject,max(price) as max_price, count(course_id) as count_course  
from udemy_courses
group by course_title, subject
having max(price) >=190 and max(price) <=195
order by subject DESC
offset 0 rows fetch next 10 rows only


--(19) what is the mix of reviws of course, subject, price, no.lecture sort by subject that no of reviews > 2700?

select course_title, subject, price, num_lectures, max(num_reviews) as max_reviews, count(course_id) as count_course 
from udemy_courses
group by course_title, subject, price, num_lectures
having max(num_reviews) >2700
order by subject DESC
--offset 0 rows fetch next 5 rows only

--(20) what is the mix of reviws of course, subject, price, no.lecture sort by subject throw the published_timestamp (1-1-2017 -1-12-2017?

select course_title, subject, price, num_lectures, published_timestamp, max(num_reviews) as max_reviews  
from udemy_courses
--where published_timestamp between '2017-01-01' and '2017012-01'
group by course_title, subject, price, num_lectures, published_timestamp
having max(num_reviews) >2700
order by max_reviews DESC

select course_title, subject, price, num_lectures, published_timestamp, max(num_reviews) as max_reviews  
from udemy_courses
where subject = 'Web Development' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price, num_lectures, published_timestamp
having max(num_reviews) <3000
order by max_reviews DESC
offset 0 rows fetch next 5 rows only

select course_title, subject, price, num_lectures, published_timestamp, max(num_reviews) as max_reviews  
from udemy_courses
where subject = 'Musical Instruments' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price, num_lectures, published_timestamp
having max(num_reviews) <3000
order by max_reviews DESC
offset 0 rows fetch next 5 rows only

select course_title, subject, price, num_lectures, published_timestamp, max(num_reviews) as max_reviews  
from udemy_courses
where subject = 'Graphic Design' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price, num_lectures, published_timestamp
having max(num_reviews) <3000
order by max_reviews DESC
offset 0 rows fetch next 5 rows only

select course_title, subject, price, num_lectures, published_timestamp, max(num_reviews) as max_reviews  
from udemy_courses
where subject = 'Business Finance' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price, num_lectures, published_timestamp
having max(num_reviews) <3000
order by max_reviews DESC
offset 0 rows fetch next 5 rows only



--(21) what is the min of reviws of course, subject, price, no.lecture sort by subject throw the published_timestamp (1-1-2017 -1-12-2017?

select course_title, subject, price, num_lectures, published_timestamp, min(num_reviews) as min_reviews
from udemy_courses
where published_timestamp between '2017-01-01' and '2017012-01'
group by course_title, subject, price, num_lectures, published_timestamp
having min(num_reviews) <= 300
order by subject DESC

select *
from udemy_courses

-- (22) what is the count of cours_title in subject caled 'web development' throw 2013? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Web Development' and published_timestamp between '2013-01-01' and '2014-01-01'
group by course_title, subject, price

-- (22) what is the count of cours_title in subject caled 'web development' throw 2014? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Web Development' and published_timestamp between '2014-01-01' and '2015-01-01'
group by course_title, subject

--(23) what is the count of cours_title in subject caled 'web development' throw 2015? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Web Development' and published_timestamp between '2015-01-01' and '2016-01-01'
group by course_title, subject

--(24) what is the count of cours_title in subject caled 'web development' throw 2016? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Web Development' and published_timestamp between '2016-01-01' and '2017-01-01'
group by course_title, subject

--(24) what is the count of cours_title in subject caled 'web development' throw 2017? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Web Development' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price



-- (25) what is the count of cours_title in subject caled 'Business Finance' throw 2013? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Business Finance' and published_timestamp between '2013-01-01' and '2014-01-01'
group by course_title, subject

-- (26) what is the count of cours_title in subject caled  'Business Finance' throw 2014? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Business Finance' and published_timestamp between '2014-01-01' and '2015-01-01'
group by course_title, subject, price

--(27) what is the count of cours_title in subject caled 'Business Finance' throw 2015? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Business Finance' and published_timestamp between '2015-01-01' and '2016-01-01'
group by course_title, subject

--(28) what is the count of cours_title in subject caled 'Business Finance' throw 2016? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Business Finance' and published_timestamp between '2016-01-01' and '2017-01-01'
group by course_title, subject

--(29) what is the count of cours_title in subject caled 'Business Finance' throw 2017? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Business Finance' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price


-- (30) what is the count of cours_title in subject caled 'Musical Instruments' throw 2013? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Musical Instruments' and published_timestamp between '2013-01-01' and '2014-01-01'
group by course_title, subject

-- (31) what is the count of cours_title in subject caled  'Musical Instruments' throw 2014? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Musical Instruments' and published_timestamp between '2014-01-01' and '2015-01-01'
group by course_title, subject

--(32) what is the count of cours_title in subject caled 'Musical Instruments' throw 2015? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Musical Instruments' and published_timestamp between '2015-01-01' and '2016-01-01'
group by course_title, subject

--(33) what is the count of cours_title in subject caled 'Musical Instruments' throw 2016? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Musical Instruments' and published_timestamp between '2016-01-01' and '2017-01-01'
group by course_title, subject, price

--(34) what is the count of cours_title in subject caled 'Musical Instruments' throw 2017? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Musical Instruments' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price

select *
from udemy_courses

-- (35) what is the count of cours_title in subject caled 'Graphic Design' throw 2013? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Graphic Design' and published_timestamp between '2013-01-01' and '2014-01-01'
group by course_title, subject

-- (36) what is the count of cours_title in subject caled  'Graphic Design' throw 2014? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Graphic Design' and published_timestamp between '2014-01-01' and '2015-01-01'
group by course_title, subject

--(37) what is the count of cours_title in subject caled 'Graphic Design' throw 2015? 
select course_title, subject, count(course_title) as count_course
from udemy_courses
where subject like 'Graphic Design' and published_timestamp between '2015-01-01' and '2016-01-01'
group by course_title, subject

--(38) what is the count of cours_title in subject caled 'Graphic Design' throw 2016? 
select course_title, subject, price, count(course_title) as count_course
from udemy_courses
where subject like 'Graphic Design' and published_timestamp between '2016-01-01' and '2017-01-01'
group by course_title, subject, price

--(39) what is the count of cours_title in subject caled 'Graphic Design' throw 2017? 
select course_title, subject,price, count(course_title) as count_course
from udemy_courses
where subject like 'Graphic Design' and published_timestamp between '2017-01-01' and '2018-01-01'
group by course_title, subject, price

-- Creating a table with total votes over 20
create table votes_over_20 as
	select *
	from vine_table
	where total_votes >= 20;

-- Creatin a table with percetenage of helpful_votes is over 50 against total_votes
create table helpfulvotes_over_50 as
	select *
	from votes_over_20
	where cast(helpful_votes as float)/cast(total_votes as float) >= 0.5;

-- Creating a tables with verified vines
create table vine_verified as
	select * 
	from helpfulvotes_over_50
	where vine = 'Y';

-- Creating a tables with not verified vines
create table vine_not_verified as
	select * 
	from helpfulvotes_over_50
	where vine = 'N';
	
-- Getting the summary of reviews from vine_verified table
select (select count(review_id) from vine_verified) as Total_reviews,
	(select count(review_id) from vine_verified where star_rating=5) as five_star_reviews,
	cast((select count(review_id) from vine_verified where star_rating=5) as float)/cast((select count(review_id) from vine_verified) as float) * 100 AS five_star_percentage;

-- Getting the summary of revires from vine_not_verified table
select (select count(review_id) from vine_not_verified) as Total_reviews,
	(select count(review_id) from vine_not_verified where star_rating=5) as five_star_reviews,
	cast((select count(review_id) from vine_not_verified where star_rating=5) as float)/cast((select count(review_id) from vine_not_verified) as float) * 100 AS five_star_percentage;

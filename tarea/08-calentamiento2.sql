SELECT count(*) from posts;

select count(*) from posts where published = true;

select * from posts order by created_at desc limit 1;

select count(*), created_by, name from posts
inner join users on users.user_id = posts.created_by
group by created_by, name
order by count(*) desc
limit 10

select sum(counter), posts.title from claps
inner join posts on posts.post_id = claps.post_id
group by posts.title
order by sum(counter)
limit 5;
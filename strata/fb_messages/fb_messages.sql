(select user1 as user_id,
sum(msg_count) total_sent
from fb_messages
group by user1
order by 2 desc
limit 50)

union

(select user2, sum(msg_count) total_rec
from fb_messages
group by user2
order by 2 desc
limit 50) 

order by 2 desc
limit 10
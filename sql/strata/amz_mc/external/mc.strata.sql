select count(distinct user_id)
from marketing_campaign
where user_id in (
    select user_id
    from marketing_campaign
    group by user_id
    having count(distinct product_id) > 1
        and count(distinct created_at) > 1)
    and concat((user_id), '_', (product_id)) not in
(
select user_product
from (
    select *,
   rank() over (PARTITION by user_id
                    order by created_at) as rn,
    concat((user_id), '_', (product_id)) as user_product
from marketing_campaign) x
where rn = 1)
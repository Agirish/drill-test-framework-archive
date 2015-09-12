select product_class.product_family as c0 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, product as product, product_class as product_class where sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year in (1998, 1997) and time_by_day.quarter in ('Q1', 'Q1') and time_by_day.month_of_year in (1, 1) and product.product_class_id = product_class.product_class_id and sales_fact_1997.product_id = product.product_id group by product_class.product_family order by product_class.product_family ASC NULLS LAST;
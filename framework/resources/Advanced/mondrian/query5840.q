select store.store_state as c0 from store as store, (select * from inventory_fact_1997 as FOOBAR) as FACT where FACT.store_id = store.store_id and store.store_country = 'USA' and FACT.warehouse_id = 2 group by store.store_state order by store.store_state ASC NULLS LAST;
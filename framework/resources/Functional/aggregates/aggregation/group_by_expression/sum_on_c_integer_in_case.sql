select c_boolean, (CASE when (c_boolean is null) then ROUND(SUM(c_integer/12)) else CAST(SUM(CASE when (c_smalldecimal is null) then 0 else c_smalldecimal*1.2 end) as bigint)  end) from alltypes group by c_boolean order by c_boolean;
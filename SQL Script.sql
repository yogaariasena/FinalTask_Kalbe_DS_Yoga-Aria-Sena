-- Rata-Rata Umur Customer Berdasarkan Marital Status
select "Marital Status", avg(age) as "Average Age" 
from customer c
group by "Marital Status"; 

-- Rata-Rata Umur Customer Berdasarkan Gender
select gender, avg(age) as "Average Age"
from customer c
group by gender;

-- 3 Store dengan Quantity Terbanyak
select 
	s.storename,
	sum(t.qty) as "Total Quantity"
from store s 
full join "Transaction" t 
on s.storeid = t.storeid
group by s.storename
order by "Total Quantity" desc
limit 3;

-- 3 Produk Terlaris dengan Total Amount Terbanyak
select
	p."Product Name",
	sum(t.totalamount) as "Total Amount"
from product p 
full join "Transaction" t 
on p.productid = t.productid 
group by p."Product Name" 
order by "Total Amount" desc 
limit 3;
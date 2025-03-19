select * from invoice

-- 1) null olan kayıtların sayısını bulma
select count(*) from invoice where invoice_date is null 
		and billing_address is null 
		and  billing_city is null
		and billing_state is null
		and billing_country is null
		and billingpostal_code is null
		and total is null


 -- 2) Total değerleri, ve total değerlerinin iki katının alınması ve büyükten küçüğe sıralanması
select total, total * 2 ikiKat from invoice order by total* 2 desc



-- 3)  Sağdan 3 karakter, soldan 4 karakter getirilecek ve istenen filtremeye göre sql sorgusu
select billing_address,  concat(left(billing_address,3),right(billing_address,4)) AçıkAdres 
from invoice where date_part('year',invoice_date )= 2013 and date_part('month', invoice_date)= 8



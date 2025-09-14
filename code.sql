Q1.

SELECT Pno FROM suppliersandparts.PART
WHERE Color = 'red' OR Color = 'Blue'
;


Q2.

SELECT Sno, sum(Qty) as total_number_part
FROM suppliersandparts.SHIPMENT
Group by Sno
;


Q3.
SELECT Pno, Count(Sno)
 FROM suppliersandparts.SHIPMENT
 Group by Pno
 Having Count(Sno) > 1
 ;

Q4.

SELECT distinct City 
FROM suppliersandparts.SUPPLIER
WHERE City is not NULL
;


Q5.

select * from 
suppliersandparts.PART
WHERE Weight not in
(
SELECT Min(Weight) 
FROM suppliersandparts.PART
)
;

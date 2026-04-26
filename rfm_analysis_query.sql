select
    CustomerID,
    sum(Quantity * UnitPrice)as Monetary,
    count(DISTINCT InvoiceNo)as Frequency,
    datediff('2011-12-10', max(str_to_date(InvoiceDate, '%m/%d/%Y %H:%i')))as Recency
from onlineretail
where CustomerID is not null
 and CustomerID !=''
 and Quantity >0 
 and UnitPrice >0
 and InvoiceNo not like'C%'
group by CustomerID;
 






-- Write a query that will calculate the number of shipments per month. The unique key for one shipment is a combination of shipment_id and sub_id. Output the year_month in format YYYY-MM and the number of shipments in that month.

-- Table: amazon_shipment

--columns
-- shipment_id: int sub_id: int weight: int shipment_date: datetime
--code in oracle sql
SELECT to_char (shipment_date, 'YYYY-MM') AS year_month, count(
        distinct (shipment_id, sub_id)
    )
FROM amazon_shipment
GROUP BY
    1
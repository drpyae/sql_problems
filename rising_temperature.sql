SELECT w1.id
FROM Weather w1
JOIN Weather w2 ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature

/*In this query, we join the Weather table with itself, aliasing it as w1 and w2, 
on the condition that w1.recordDate is one day after w2.recordDate. 
then filter the results to only include cases where w1.temperature is greater than w2.temperature,
meaning the temperature has increased from the previous day. Finally, we select only the id column from w1 as the output of the query.

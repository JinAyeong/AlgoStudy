SELECT HOUR(DATETIME) AS HOUR, COUNT(*) AS 'COUNT'
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 19
GROUP BY 1
ORDER BY 1
;
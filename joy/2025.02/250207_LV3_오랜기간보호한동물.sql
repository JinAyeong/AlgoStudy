# DATE끼리 차이를 그냥 냅다 빼려고 했네 ㅎㅎ;;;;;;; 날짜 차이는 datediff이용해서 빼면된다
SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I
# WHERE DATE(O.DATETIME) - DATE(I.DATETIME)
JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY(DATEDIFF(O.DATETIME, I.DATETIME)) DESC
LIMIT 2;
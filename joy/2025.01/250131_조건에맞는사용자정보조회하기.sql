# concat 이랑 having 기억하기 count는 where 조건에서는 사용할 수 없음 
# 그리고 상세주소 제대로 안하고있어서 틀린거였음 ㅡㅡ 빡친다
SELECT 
U.USER_ID, U.NICKNAME, CONCAT(U.CITY,' ', U.STREET_ADDRESS1,' ',U.STREET_ADDRESS2) AS '전체주소', 
CONCAT(SUBSTR(U.TLNO, 1, 3),'-', SUBSTR(U.TLNO, 4, 4),'-',SUBSTR(U.TLNO, 8, 4)) AS '전화번호'
FROM USED_GOODS_USER U
JOIN USED_GOODS_BOARD B
ON U.USER_ID = B.WRITER_ID
GROUP BY U.USER_ID
HAVING COUNT(B.WRITER_ID) >= 3
ORDER BY U.USER_ID DESC;
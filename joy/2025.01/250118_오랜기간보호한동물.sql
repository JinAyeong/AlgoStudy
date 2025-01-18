SELECT A.NAME, A.DATETIME 
FROM ANIMAL_INS A
LEFT JOIN ANIMAL_OUTS B 
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.DATETIME IS NULL 
ORDER BY DATETIME
LIMIT 3;

# SELECT A.NAME, A.DATETIME 
# FROM ANIMAL_INS A
# LEFT JOIN ANIMAL_OUTS B 
# ON A.NAME = B.NAME 처음에는 name으로 조인을 해서 자꾸 이상하게 나왔다 !! 고유한 값이 아니라 그런듯 ㅜㅜ id 로 해주니까 바로 맞았다!
# WHERE B.DATETIME IS NULL 
# ORDER BY DATETIME
# LIMIT 3;
SELECT A.ITEM_ID, A.ITEM_NAME, A.RARITY
FROM ITEM_INFO A, ITEM_TREE B
WHERE A.ITEM_ID = B.ITEM_ID
AND B.PARENT_ITEM_ID IN 
(SELECT ITEM_INFO.ITEM_ID 
FROM ITEM_INFO
WHERE ITEM_INFO.RARITY = 'RARE')
ORDER BY ITEM_ID DESC;
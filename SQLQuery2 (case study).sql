SELECT * FROM Production.Culture;

SELECT CultureID, Name, ModifiedDate,
	CASE Name
	WHEN 'English' THEN 'Angielski'
	WHEN 'French' THEN 'Francuski' 
	WHEN 'Spanish' THEN 'Hiszpanski'
	ELSE 'Inny jezyk'
	END AS Nazwa_Polska
FROM Production.Culture;

NULL*3=?  0
NULL+3=?  3


SELECT CultureID, Name, ModifiedDate,
	CASE Name
	WHEN Name = 'English' THEN 'Angielski'
	WHEN Name = 'French' THEN 'Francuski' 
	WHEN Name = 'Spanish' THEN 'Hiszpanski'
	ELSE 'Inny jezyk'
	END AS Nazwa_Polska
FROM Production.Culture;
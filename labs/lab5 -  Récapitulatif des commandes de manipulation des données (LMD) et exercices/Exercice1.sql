SELECT * FROM CATEGORIES ;

/*Creation d'une nouvelle Cat�gorie*/
INSERT INTO CATEGORIES VALUES((SELECT (MAX(CODE_CATEGORIE)+1) FROM CATEGORIES) , 'Champignon' , 'Champignon de Paris Tr�s Gouteux et Suculants' ) ;
SELECT * FROM CATEGORIES ;

/*Augmentation du salaire de l'employ� Fuller de 20% + commission de 2000 */
SELECT * FROM EMPLOYES ;
UPDATE EMPLOYES
SET SALAIRE = SALAIRE*1.2 , COMMISSION = 2000
WHERE Nom = 'Fuller' ;
SELECT * FROM EMPLOYES ;

/*SUpp CAt Champignon*/
SELECT * FROM CATEGORIES
DELETE FROM CATEGORIES 
WHERE NOM_CATEGORIE = 'Champignon' ;
SELECT * FROM CATEGORIES ;

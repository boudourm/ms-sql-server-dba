--Requ�te 1 : Affchez les �Produit pour les quels la quantit� en stock est sup�rieur �  la mayenne
SELECT * 
FROM PRODUITS 
WHERE UNITES_STOCK > 
(SELECT AVG(UNITES_STOCK)
 FROM PRODUITS) ;

--Requ�te 2 : Affichez tous les Clients et les Commandes pour les poduits livr�s par 1 fournisseur qui habite London


SELECT u.CODE_CLIENT , u.SOCIETE , v.NO_COMMANDE , v.DATE_COMMANDE
FROM CLIENTS u , COMMANDES v 
WHERE u.CODE_CLIENT = v.CODE_CLIENT 
AND   v.NO_COMMANDE IN 
(SELECT No_Commande 
 FROM DETAILS_COMMANDES
 WHERE REf_Produit IN
(SELECT Ref_Produit
FROM PRODUITS
WHERE No_Fournisseur IN
(SELECT NO_FOURNISSEUR
 FROM FOURNISSEURS
 WHERE Ville = 'London'))) ;

SELECT u.CODE_CLIENT , u.SOCIETE , u.VILLE, v.NO_COMMANDE , v.DATE_COMMANDE , q.NOM_PRODUIT , l.NO_FOURNISSEUR , l.VILLE 
FROM CLIENTS u ,COMMANDES v , DETAILS_COMMANDES p , PRODUITS q , FOURNISSEURS l
WHERE (u.CODE_CLIENT = v.CODE_CLIENT)
AND   (v.NO_COMMANDE = p.NO_COMMANDE)
AND   (p.REF_PRODUIT = q.REF_PRODUIT)
AND   (q.NO_FOURNISSEUR = l.NO_FOURNISSEUR)
AND   (l.VILLE = 'London') 
ORDER BY u.CODE_CLIENT;

--Requ�te 3 : Affichez les employ�s dont le salaire + commission est sup�rieur � la moyenne des salaire

SELECT * 
FROM EMPLOYES
WHERE (SALAIRE +  COALESCE(Commission ,0)) >
(SELECT AVG(SALAIRE )
FROM EMPLOYES) ;














/*=====================================================
  REQUÊTE 1 : Afficher les societe avec leurs differentes commandes (No Commande , Date Commande)
  =====================================================*/
  SELECT u.SOCIETE , v.NO_COMMANDE , v.DATE_COMMANDE 
  FROM CLIENTS u , COMMANDES v
  WHERE u.CODE_CLIENT = v.CODE_CLIENT ;

/*=====================================================
  REQUÊTE 2 : Liste des Produits Nom_Produit , Unites_Stock  ainsi que le nom de la catégorie de chaque produit ayant les catégories 1,4,7
  =====================================================*/
  SELECT u.NOM_PRODUIT , u.UNITES_STOCK , v.NOM_CATEGORIE
  FROM PRODUITS u , CATEGORIES v
  WHERE u.CODE_CATEGORIE = v.CODE_CATEGORIE
  AND   u.CODE_CATEGORIE IN (1,4,7) ;

  /*=====================================================
  REQUÊTE 3 : Nom , Preon ... Bla Bla Bla
  =====================================================*/
  SELECT q.SOCIETE , u.NOM , u.PRENOM
  FROM EMPLOYES u , COMMANDES v , CLIENTS q 
  WHERE u.NO_EMPLOYE = v.NO_EMPLOYE
  AND   v.CODE_CLIENT = q.CODE_CLIENT
  AND   q.VILLE = 'Paris' 
  ORDER BY q.SOCIETE;

  /*=====================================================
  REQUÊTE 4 : Sociétés Clientes qui ont commandé le produit 'Gorgonzola Telino' trié sur le nom de la société
  =====================================================*/
  SELECT u.SOCIETE , 
         u.CODE_CLIENT AS "Code Client(CLIENTS)" ,
		 v.CODE_CLIENT AS "CODE Client(COMMANDES)" ,
		 v.NO_COMMANDE AS "No Commande(COMMANDES)" ,
		 p.NO_COMMANDE AS "No Commande(DETAILS_COMMANDES)" ,
		 p.REF_PRODUIT AS "Ref Produit(DETAILS_COMMANDES)" ,
		 q.REF_PRODUIT AS "Ref Produit(PRODUIT)" ,
		 q.NOM_PRODUIT 
  FROM CLIENTS u , COMMANDES v , DETAILS_COMMANDES p, PRODUITS q
  WHERE (u.CODE_CLIENT = v.CODE_CLIENT)
  AND   (v.NO_COMMANDE = p.NO_COMMANDE)
  AND   (p.REF_PRODUIT = q.REF_PRODUIT)
  AND   (q.NOM_PRODUIT = 'Gorgonzola Telino')
  ORDER BY u.SOCIETE ;




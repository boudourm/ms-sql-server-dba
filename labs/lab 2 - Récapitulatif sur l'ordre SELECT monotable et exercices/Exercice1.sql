/*=====================================================
  REQU�TE 1 : Lister Tous Les Employ�s de La Soci�t�
  =====================================================*/
  SELECT * FROM EMPLOYES ;
	
/*=====================================================
  REQU�TE 2 : Lister toutes les Cat�gories de Produits
  =====================================================*/
  SELECT * From CATEGORIES ;

  /*=====================================================
  REQU�TE 3 : Afficher Nom , Prenom et Date de Naissance de Tous les employ�s
  =====================================================*/
  SELECT Nom , Prenom , Date_Naissance 
  FROM EMPLOYES; 

  /*=====================================================
  REQU�TE 4 :Afficher la Liste de fonctions des employ� 1 seulle fois chacune  	
  =====================================================*/
  SELECT DISTINCT Fonction
  FROM EMPLOYES ;
  
  /*=====================================================
  REQU�TE 5 :Afficher la Liste des villes des Clients 1 seulle fois chaune  
  =====================================================*/
  SELECT DISTINCT Ville 
  FROM CLIENTS ;

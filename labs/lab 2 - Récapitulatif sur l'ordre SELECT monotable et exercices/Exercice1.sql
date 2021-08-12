/*=====================================================
  REQUÊTE 1 : Lister Tous Les Employés de La Société
  =====================================================*/
  SELECT * FROM EMPLOYES ;
	
/*=====================================================
  REQUÊTE 2 : Lister toutes les Catégories de Produits
  =====================================================*/
  SELECT * From CATEGORIES ;

  /*=====================================================
  REQUÊTE 3 : Afficher Nom , Prenom et Date de Naissance de Tous les employés
  =====================================================*/
  SELECT Nom , Prenom , Date_Naissance 
  FROM EMPLOYES; 

  /*=====================================================
  REQUÊTE 4 :Afficher la Liste de fonctions des employé 1 seulle fois chacune  	
  =====================================================*/
  SELECT DISTINCT Fonction
  FROM EMPLOYES ;
  
  /*=====================================================
  REQUÊTE 5 :Afficher la Liste des villes des Clients 1 seulle fois chaune  
  =====================================================*/
  SELECT DISTINCT Ville 
  FROM CLIENTS ;

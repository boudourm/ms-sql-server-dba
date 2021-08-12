/*=====================================================
  REQUÊTE 1 : Lister tous les Clients dont le pays est l'espagne
  =====================================================*/
  SELECT * 
  FROM CLIENTS
  WHERE Pays = 'Espagne' ;

  /*=====================================================
  REQUÊTE 2 : Lister tous les employés qui ne sont pas des représentants
  =====================================================*/
  SELECT * 
  FROM EMPLOYES
  WHERE Fonction != 'Représentant(e)' ;

  /*=====================================================
  REQUÊTE 3 : Afficher le nom de la société , la ville , le pays , le No de Fax de tous les Clients ayant un No de Fax renseigné  
  =====================================================*/
  SELECT Societe , Ville , Pays , Fax
  FROM CLIENTS
  WHERE (LEN(Fax) != 0) ;

  /*=====================================================
  REQUÊTE 4 : Afficher la liste de tous les employés embauchés en 1993 
  =====================================================*/
  SELECT * 
  FROM EMPLOYES
  WHERE YEAR(Date_Embauche) = 1993 ;
	
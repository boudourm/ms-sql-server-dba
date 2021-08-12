/*=====================================================
  REQU�TE 1 : Lister tous les Clients dont le pays est l'espagne
  =====================================================*/
  SELECT * 
  FROM CLIENTS
  WHERE Pays = 'Espagne' ;

  /*=====================================================
  REQU�TE 2 : Lister tous les employ�s qui ne sont pas des repr�sentants
  =====================================================*/
  SELECT * 
  FROM EMPLOYES
  WHERE Fonction != 'Repr�sentant(e)' ;

  /*=====================================================
  REQU�TE 3 : Afficher le nom de la soci�t� , la ville , le pays , le No de Fax de tous les Clients ayant un No de Fax renseign�  
  =====================================================*/
  SELECT Societe , Ville , Pays , Fax
  FROM CLIENTS
  WHERE (LEN(Fax) != 0) ;

  /*=====================================================
  REQU�TE 4 : Afficher la liste de tous les employ�s embauch�s en 1993 
  =====================================================*/
  SELECT * 
  FROM EMPLOYES
  WHERE YEAR(Date_Embauche) = 1993 ;
	
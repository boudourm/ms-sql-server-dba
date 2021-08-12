/*=====================================================
  REQU�TE 1 : Afficher le Nombre de clients par pays
  =====================================================*/
  SELECT Pays , COUNT(Pays) AS "Nombre de Clients"
  FROM CLIENTS
  GROUP BY PAYS ;

  /*=====================================================
  REQU�TE 2 : Afficher la Masse Salariale pour chaque fonction des employ�s 
  =====================================================*/
  SELECT Fonction , SUM(Salaire) AS "Masse Salariale"
  FROM EMPLOYES
  GROUP BY Fonction ;

  /*=====================================================
  REQU�TE 3 : Afficher les employ�s par ordre alphab�tique de leur nom et du plus grand salaire au plus petit
  =====================================================*/
  SELECT Nom , Salaire
  FROM EMPLOYES
  ORDER BY Nom , SALAIRE DESC ;
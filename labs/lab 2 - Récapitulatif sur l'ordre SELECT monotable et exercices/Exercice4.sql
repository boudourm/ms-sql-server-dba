/*=====================================================
  REQUÊTE 1 : Afficher le Nombre de clients par pays
  =====================================================*/
  SELECT Pays , COUNT(Pays) AS "Nombre de Clients"
  FROM CLIENTS
  GROUP BY PAYS ;

  /*=====================================================
  REQUÊTE 2 : Afficher la Masse Salariale pour chaque fonction des employés 
  =====================================================*/
  SELECT Fonction , SUM(Salaire) AS "Masse Salariale"
  FROM EMPLOYES
  GROUP BY Fonction ;

  /*=====================================================
  REQUÊTE 3 : Afficher les employés par ordre alphabétique de leur nom et du plus grand salaire au plus petit
  =====================================================*/
  SELECT Nom , Salaire
  FROM EMPLOYES
  ORDER BY Nom , SALAIRE DESC ;
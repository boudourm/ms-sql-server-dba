/*=====================================================
  REQUÊTE  : Nom , Prenom , fonction des Supérieurs Hiérarchiques et le nom et prenom des employés gérés par eux 
  =====================================================*/
  SELECT u.NOM AS "Nom Supérieur" , u.PRENOM AS "Prenom Supérieur",
         u.FONCTION , v.NOM AS "Nom Subordonné" , v.PRENOM AS "Prenom Subordonné"
  FROM EMPLOYES u , EMPLOYES v 
  WHERE u.NO_EMPLOYE = v.REND_COMPTE
  ORDER BY u.nom ; 
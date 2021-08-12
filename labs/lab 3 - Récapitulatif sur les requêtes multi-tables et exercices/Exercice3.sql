/*=====================================================
  REQU�TE  : Nom , Prenom , fonction des Sup�rieurs Hi�rarchiques et le nom et prenom des employ�s g�r�s par eux 
  =====================================================*/
  SELECT u.NOM AS "Nom Sup�rieur" , u.PRENOM AS "Prenom Sup�rieur",
         u.FONCTION , v.NOM AS "Nom Subordonn�" , v.PRENOM AS "Prenom Subordonn�"
  FROM EMPLOYES u , EMPLOYES v 
  WHERE u.NO_EMPLOYE = v.REND_COMPTE
  ORDER BY u.nom ; 
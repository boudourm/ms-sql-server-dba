/*=====================================================
  REQUÊTE 1 :Afficher Nom , Prenom , Fonction , Salaire des tous es Employés ayant 1 salaire entre 2500 et 3500 
  =====================================================*/
  SELECT Nom , Prenom , Fonction , Salaire 
  FROM EMPLOYES
  WHERE Salaire BETWEEN 2500 AND 3500 ;

  /*=====================================================
  REQUÊTE 2 : Afficher le Nom de la société l'adresse le telephone la ville des Clients qui habitent Toulouse , Starsbourg , Nantes , Marseille		
  =====================================================*/
  SELECT Societe , Adresse ,Telephone , Ville
  FROM CLIENTS
  WHERE  Ville IN ('Toulouse','Strasbourg','Nantes','Marseille') ;

  /*=====================================================
  REQUÊTE 3 : Afficher Nom , Prenom , Fonction , Salaire des employés en activité depuis le 10/10/1993
  =====================================================*/
  SELECT Nom , Prenom , Fonction , Salaire , DATE_EMBAUCHE
  FROM EMPLOYES
  WHERE FONCTION = 'Représentant(e)' AND DATE_EMBAUCHE > '10/10/1993' ; 

  /*=====================================================
  REQUÊTE 4 :	Nom , Prenom , Fonction , Salaire des employés âgé de plus de 45 ans ou ayant une ancienneté de plus de 10 ans	
  =====================================================*/
  SELECT Nom , Prenom ,Fonction ,Salaire ,
         DATEDIFF(YEAR , DATE_NAissance , GETDATE()) AS Âge ,
		 DATEDIFF(YEAR , DATE_Embauche , GetDATE())  AS Ancienneté
  FROM   EMPLOYES
  WHERE DATEDIFF(YEAR , DATE_NAissance , GETDATE()) > 45
  OR    DATEDIFF(YEAR , DATE_Embauche , GetDATE())  > 10 ;


/*=====================================================
  REQUÊTE 5 : Afficher le Nom , Prenom , Fonction , SAlaire des employés dont le nom commence par la lettre 'D'
  =====================================================*/
  SELECT Nom,Prenom,Fonction,Salaire
  FROM employes	
  WHERE Nom LIKE 'D%' ;

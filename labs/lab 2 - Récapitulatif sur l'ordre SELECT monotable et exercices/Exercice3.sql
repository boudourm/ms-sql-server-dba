/*=====================================================
  REQU�TE 1 :Afficher Nom , Prenom , Fonction , Salaire des tous es Employ�s ayant 1 salaire entre 2500 et 3500 
  =====================================================*/
  SELECT Nom , Prenom , Fonction , Salaire 
  FROM EMPLOYES
  WHERE Salaire BETWEEN 2500 AND 3500 ;

  /*=====================================================
  REQU�TE 2 : Afficher le Nom de la soci�t� l'adresse le telephone la ville des Clients qui habitent Toulouse , Starsbourg , Nantes , Marseille		
  =====================================================*/
  SELECT Societe , Adresse ,Telephone , Ville
  FROM CLIENTS
  WHERE  Ville IN ('Toulouse','Strasbourg','Nantes','Marseille') ;

  /*=====================================================
  REQU�TE 3 : Afficher Nom , Prenom , Fonction , Salaire des employ�s en activit� depuis le 10/10/1993
  =====================================================*/
  SELECT Nom , Prenom , Fonction , Salaire , DATE_EMBAUCHE
  FROM EMPLOYES
  WHERE FONCTION = 'Repr�sentant(e)' AND DATE_EMBAUCHE > '10/10/1993' ; 

  /*=====================================================
  REQU�TE 4 :	Nom , Prenom , Fonction , Salaire des employ�s �g� de plus de 45 ans ou ayant une anciennet� de plus de 10 ans	
  =====================================================*/
  SELECT Nom , Prenom ,Fonction ,Salaire ,
         DATEDIFF(YEAR , DATE_NAissance , GETDATE()) AS �ge ,
		 DATEDIFF(YEAR , DATE_Embauche , GetDATE())  AS Anciennet�
  FROM   EMPLOYES
  WHERE DATEDIFF(YEAR , DATE_NAissance , GETDATE()) > 45
  OR    DATEDIFF(YEAR , DATE_Embauche , GetDATE())  > 10 ;


/*=====================================================
  REQU�TE 5 : Afficher le Nom , Prenom , Fonction , SAlaire des employ�s dont le nom commence par la lettre 'D'
  =====================================================*/
  SELECT Nom,Prenom,Fonction,Salaire
  FROM employes	
  WHERE Nom LIKE 'D%' ;

SELECT Nom ,Prenom , Fonction , Salaire,
CASE Fonction
WHEN 'Vice-pr�sident' THEN Salaire*1.1
WHEN 'Chef des ventes' THEN SALAIRE*1.2
WHEN 'Repr�sentant(e)' THEN Salaire*1.1 + Commission
ELSE Salaire*1.1
END AS "Augmentation Simul�e"
FROM Employes ;
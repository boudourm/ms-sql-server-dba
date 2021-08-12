CREATE VIEW GESTLOC (Nom , Prénom ,Num_Maison , Nbr_Chambre , Surface ) AS
(SELECT u.Nom , u.Prenom , v.Num_Maison , v.Nbr_Chambre , v.Surface
 FROM LOCATAIRES u , MAISONS v
 WHERE u.CODE_LOCATAIRE = v.CODE_LOCATAIRE 
);

CREATE SYNONYM loc FOR LOCATAIREs ;
CREATE SYNONYM ms FOR MAISONS ;

CREATE INDEX idx_Nom_Prenom ON LOCATAIRES (Nom , Prenom) ;

  /*=====================================================
  REQUÊTE  : Villes et Cumul des quntités vendues par ville
  =====================================================*/
  SELECT u.VILLE , SUM(p.QUANTITE) AS Cummul
  FROM CLIENTS u , COMMANDES v , DETAILS_COMMANDES p
  WHERE u.CODE_CLIENT = v.CODE_CLIENT
  AND   v.NO_COMMANDE = p.NO_COMMANDE
  GROUP BY u.VILLE
  ORDER By Cummul DESC;

  SELECT u.VILLE , SUM(QUANTITE) AS Cummul
  FROM CLIENTS u , COMMANDES v , DETAILS_COMMANDES p
  WHERE u.CODE_CLIENT = v.CODE_CLIENT
  AND   v.NO_COMMANDE = p.NO_COMMANDE
   GROUP BY u.VILLE
   HAVING (u.VILLE = 'London');


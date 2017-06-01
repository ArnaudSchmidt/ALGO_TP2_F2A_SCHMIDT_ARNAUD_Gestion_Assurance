
-- J'ai testé plusieurs moutures de ceci, ce qui ne retourne que des erreurs, pour de bonnes raisons que je comprends, 
-- mais je suis incapable de faire un script de suppression fonctionnel, ces notions ne sont de toute évidence pas acquises,
-- je n'en trouve d'ailleurs pas la moindre trace dans mes cours.

	PRAGMA foreign_keys = OFF;

	UPDATE IMPLICATION
	SET NUMVEH = NULL;

	UPDATE VEHICULE
	SET NUMVEH = NULL;
	UPDATE ACCIDENT
	SET NUMACC = NULL;
		
	DELETE * FROM IMPLICATION;
		
	DROP TABLE IMPLICATION;
		
	PRAGMA foreign_keys = ON;


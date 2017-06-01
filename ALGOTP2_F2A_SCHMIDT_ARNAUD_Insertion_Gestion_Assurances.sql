
-- Un client qui n'aura ni contrat, ni véhicule (sa création ne s'accompagne donc pas d'autres insertions).
	insert into CLIENT values ('000000000001', 'Premier', 'Bob');
	
-- Un client qui a un véhicule assuré à son nom.
	insert into CLIENT values ('000000000002', 'Deuxième', 'Bob');		-- On crée d'abord le client, sans lui pas de contrat ni de véhicule.
	insert into CONTRAT values ('000000000002', 1, 'Formule extra', '2017-06-01');		-- Vient ensuite le contrat, car tout véhicule doit faire l'objet d'un contrat.
	insert into VEHICULE values (1, 'Opel', 'Sport', '2017', 'non', '000000000002', 1, '000000000002');		-- Et enfin le véhicule, puisqu'il y a un contrat, il doit y avoir un véhicule.
	
-- Un client qui a un véhicule assuré, mais qui n'est pas le signataire du contrat.
	insert into CLIENT values ('000000000003', 'FilsDuDeuxième', 'Bob');		-- On crée d'abord le client, sans lui pas de contrat ni de véhicule.
	insert into CONTRAT values ('000000000002', 2, 'Formule risquée', '2017-06-01');		-- Vient ensuite le contrat, car tout véhicule doit faire l'objet d'un contrat.
	insert into VEHICULE values (2, 'Opel', 'Hybrid', '2017', 'non', '000000000002', 2, '000000000003');		-- Et enfin le véhicule, puisqu'il y a un contrat, il doit y avoir un véhicule.
	
-- Un client qui possède deux véhicules et également deux contrats à son nom.
	insert into CLIENT values ('000000000004', 'Big', 'Bob');		-- On crée d'abord le client, sans lui pas de contrat ni de véhicule.
	insert into CONTRAT values ('000000000004', 3, 'Formule riche', '2017-05-31');		-- Vient ensuite le premier contrat, car tout véhicule doit faire l'objet d'un contrat.
	insert into VEHICULE values (3, 'Opel', 'Pick Up', '2017', 'oui', '000000000004', 3, '000000000004');		-- Et enfin le véhicule, puisqu'il y a un contrat, il doit y avoir un véhicule.
	insert into CONTRAT values ('000000000004', 4, 'Formule riche', '2017-06-01');		-- Vient ensuite le second contrat, car tout véhicule doit faire l'objet d'un contrat.
	insert into VEHICULE values (4, 'Opel', 'Sport', '2017', 'oui', '000000000004', 4, '000000000004');		-- Et enfin le véhicule, puisqu'il y a un contrat, il doit y avoir un véhicule.
	
-- Un client qui a un contrat à son nom, mais pas de véhicule associé.
	insert into CLIENT values ('000000000005', 'Solo', 'Bob');		-- On crée d'abord le client, sans lui pas de contrat ni de véhicule.
	insert into CONTRAT values ('000000000005', 5, 'Formule piéton', '2017-04-02');		-- Vient ensuite le contrat qui ne nécessite pas de véhicule.

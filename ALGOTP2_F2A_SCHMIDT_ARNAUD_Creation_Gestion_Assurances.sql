
PRAGMA foreign_keys = ON;

create table CLIENT
	(
		NUMCLIENT char (12) not null UNIQUE,
		NOM char (38) not null,
		ADRESSE char (60) not null,
		
		primary key (NUMCLIENT)
	);
	
create table CONTRAT
	(
		SIGNATAIRE char (12) not null,
		NUMCTR decimal (20) not null UNIQUE,
		TYPECTR char (50) not null,
		DATESIGN date not null,
		
		primary key (SIGNATAIRE,NUMCTR),
		foreign key (SIGNATAIRE) references CLIENT(NUMCLIENT)
	);
	
create table VEHICULE
	(
		NUMVEH decimal (20) not null UNIQUE,
		MARQUE char (20) not null,
		MODELE char (20) not null,
		ANNEE year not null,
		CYLINDREE char (3) not null,
		SIGNATAIRE char (12) not null,
		NUMCTR decimal (20) not null,
		NUMCLIENT char (12) not null,
		
		primary key (NUMVEH,SIGNATAIRE,NUMCTR),
		foreign key (SIGNATAIRE) references CONTRAT(SIGNATAIRE)
		foreign key (NUMCTR) references CONTRAT(NUMCTR)
		foreign key (NUMCLIENT) references CLIENT(NUMCLIENT)
	);
	
create table ACCIDENT
	(
		NUMACC decimal (20) not null UNIQUE,
		DATEACC date not null,
		MONTANT decimal (6),
		
		primary key (NUMACC)
	);
	
create table IMPLICATION
	(
		NUMACC decimal (20) not null,
		NUMVEH decimal (20) not null,
		
		primary key (NUMACC,NUMVEH),
		foreign key (NUMVEH) references VEHICULE(NUMVEH)
		foreign key (NUMACC) references ACCIDENT(NUMACC)
	);
	

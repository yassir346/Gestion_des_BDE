CREATE TABLE Membre_BDE(
   ID VARCHAR(64),
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   Email VARCHAR(50),
   Role VARCHAR(50),
   Date_d_adhésion VARCHAR(50),
   PRIMARY KEY(ID)
);

CREATE TABLE Sponsor(
   ID_Sponsor VARCHAR(50),
   Nom_entreprise VARCHAR(50),
   Nom_contact_principale VARCHAR(50),
   Email VARCHAR(50),
   Num_téléphone VARCHAR(50),
   Evenement_financé VARCHAR(50),
   PRIMARY KEY(ID_Sponsor)
);

CREATE TABLE Activité(
   NO_Activité VARCHAR(50),
   Nom_d_événement VARCHAR(50),
   Description VARCHAR(50),
   Date_et_heure VARCHAR(50),
   Lieu VARCHAR(50),
   Budget_prévu VARCHAR(50),
   Membres_Responsables_de_l_organisation VARCHAR(50),
   PRIMARY KEY(NO_Activité)
);

CREATE TABLE Participant(
   ID VARCHAR(50),
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   Email VARCHAR(50),
   Status VARCHAR(50),
   PRIMARY KEY(ID)
);

CREATE TABLE participer(
   NO_Activité VARCHAR(50),
   ID VARCHAR(50),
   PRIMARY KEY(NO_Activité, ID),
   FOREIGN KEY(NO_Activité) REFERENCES Activité(NO_Activité),
   FOREIGN KEY(ID) REFERENCES Participant(ID)
);

CREATE TABLE Organiser(
   ID VARCHAR(64),
   NO_Activité VARCHAR(50),
   PRIMARY KEY(ID, NO_Activité),
   FOREIGN KEY(ID) REFERENCES Membre_BDE(ID),
   FOREIGN KEY(NO_Activité) REFERENCES Activité(NO_Activité)
);

CREATE TABLE Sponsoriser(
   ID_Sponsor VARCHAR(50),
   NO_Activité VARCHAR(50),
   PRIMARY KEY(ID_Sponsor, NO_Activité),
   FOREIGN KEY(ID_Sponsor) REFERENCES Sponsor(ID_Sponsor),
   FOREIGN KEY(NO_Activité) REFERENCES Activité(NO_Activité)
);

INSERT into
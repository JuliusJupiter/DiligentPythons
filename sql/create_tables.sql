CREATE TABLE kathi (
	nutzer_id INTEGER PRIMARY KEY AUTOINCREMENT,
	nutzername TEXT NOT NULL,
    passwort TEXT NOT NULL
);
CREATE TABLE wohnungsinersat (
	inserat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nutzer_id INTEGER, FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
	name TEXT NOT NULL,
    barrierefreiheit BOOLEAN,
    balkonvorhanden BOOLEAN,
    fahrstuhlvorhanden BOOLEAN,
    haustierfreundlich BOOLEAN,
    miete INTEGER,
    egage INTEGER,
    zimmeranz INTEGER,
    quadratmeter INTEGER, 
    ort TEXT,
    kommentar TEXT
);

CREATE TABLE foreneintrag (
    forumseintags_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nutzer_id INTEGER, FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    inhalt Text 	
);

CREATE TABLE inserat_erstellt_von(
    nutzer_id INTEGER, FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    inserat_id INTEGER, FOREIGN KEY (inserat_id) REFERENCES wohnungsinserat (inserat_id) ON DELETE CASCADE,
    PRIMARY KEY( nutzer_id, inserat_id)
);

CREATE TABLE nachricht(
    nutzer_id_empfaenger INTEGER, FOREIGN KEY (nutzer_id_empfaenger) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    nutzer_id_sender INTEGER,  FOREIGN KEY (nutzer_id_sender) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    gesehen BOOLEAN, 
    inhalt TEXT,
    PRIMARY KEY( nutzer_id_empfaenger, nutzer_id_sender, inhalt)


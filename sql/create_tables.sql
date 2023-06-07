CREATE TABLE kathi (
	nutzer_id INTEGER PRIMARY KEY AUTOINCREMENT,
	nutzername TEXT NOT NULL,
    passwort TEXT NOT NULL
);
CREATE TABLE wohnungsinersat (
	inserat_id INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
	name TEXT NOT NULL,
    barrierefreiheit BOOLEAN,
    balkonvorhanden BOOLEAN,
    fahrstuhlvorhanden BOOLEAN,
    miete INTEGER,
    egage INTEGER,
    zimmeranz INTEGER,
    quadratmeter INTEGER, 
    ort TEXT

);
CREATE TABLE foreneintrag (
	nutzer_id INTEGER,
    forumseintags_id INTEGER PRIMARY KEY AUTOINCREMENT,
    inhalt Text 
	
);

CREATE TABLE kathis_eintrag(
    PRIMARY KEY( nutzer_id, inserat_id),
    FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    FOREIGN KEY (inserat_id) REFERENCES wohnungsinserat (inserat_id) ON DELETE CASCADE
);



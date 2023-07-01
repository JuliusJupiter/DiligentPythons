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
    ort TEXT,
    kommentar TEXT


);
CREATE TABLE foreneintrag (
    forumseintags_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nutzer_id FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    inhalt Text 
	
);

CREATE TABLE inserat_erstellt_von(
    PRIMARY KEY( nutzer_id, inserat_id),
    nutzer_id FOREIGN KEY (nutzer_id) REFERENCES kathi (nutzer_id) ON DELETE CASCADE,
    inserat_id FOREIGN KEY (inserat_id) REFERENCES wohnungsinserat (inserat_id) ON DELETE CASCADE
);



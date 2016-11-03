-- CREATE TABLE players (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(255),
--   player_number INT,
--   team VARCHAR(255)
-- );

-- INSERT INTO players (name, player_number, team) VALUES ("Paula Bunion", 45, "Wrecking Belles");
-- INSERT INTO players (name, player_number, team) VALUES ("Grave Danger", 6, "Team Unicorn");
-- INSERT INTO players (name, player_number, team) VALUES ("April Bloodgate", 12, "Team Unicorn");

-- CREATE TABLE teams ( 
-- 	id INTEGER PRIMARY KEY,
--  team_name  VARCHAR(255)
-- ); 

-- INSERT INTO teams (team_name) VALUES ("Wrecking Belles");
-- INSERT INTO teams (team_name) VALUES ("Team Unicorn");

-- CREATE TABLE players ( 
-- 	id INTEGER PRIMARY KEY,
-- 	name VARCHAR(255), 
-- 	player_num INT,
-- 	team_id INT,
-- 	FOREIGN KEY (team_id) REFERENCES teams(id)
-- ); 

INSERT INTO players (name, player_num, team_id) VALUES ("Terror Swift", 48 , 1);
INSERT INTO players (name, player_num, team_id) VALUES ("Frisky Disco", 100, 1);
INSERT INTO players (name, player_num, team_id) VALUES ("Bloodbath and Beyond", 3, 2);
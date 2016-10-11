-- CREATE TABLE players (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(255),
--   player_number INT,
--   team VARCHAR(255)
-- );

-- INSERT INTO players (name,player_number, team) VALUES ("Grave Danger", 6, "Team Unicorn");
-- INSERT INTO players (name,player_number, team) VALUES ("Beyonslay", 7, "Wrecking Belles");

--  CREATE TABLE teams (
--   id INTEGER PRIMARY KEY,
--   name VARCHAR(255)
-- );

-- INSERT INTO teams (name) VALUES ("Team Unicorn");
-- INSERT INTO teams (name) VALUES ("Wrecking Belles");

 CREATE TABLE players (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  player_number INT,
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES teams(id)
);

INSERT INTO players (name,player_number, team_id) VALUES ("Grave Danger", 6, 1);
INSERT INTO players (name,player_number, team_id) VALUES ("Beyonslay", 7, 2);
INSERT INTO players (name,player_number, team_id) VALUES ("Terror Swift", 48, 2);
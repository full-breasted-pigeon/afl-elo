-- Table: team_name

CREATE TABLE team_name
(
  team_name_id serial NOT NULL, -- Unique id for each team name
  full_name text, -- Full name of the team
  short_name text, -- short name of the club
  abbr_name text, -- The abbreviation of the team name
  team_id integer,
  start_date timestamp without time zone NOT NULL,
  end_date timestamp with time zone,
  CONSTRAINT team_name_pkey PRIMARY KEY (team_name_id),
  CONSTRAINT team_name_team_id_fkey FOREIGN KEY (team_id)
      REFERENCES team (team_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE team_name
  OWNER TO afl;
COMMENT ON TABLE team_name
  IS 'History of all team names for each team';
COMMENT ON COLUMN team_name.team_name_id IS 'Unique id for each team name';
COMMENT ON COLUMN team_name.full_name IS 'Full name of the team';
COMMENT ON COLUMN team_name.short_name IS 'short name of the club';
COMMENT ON COLUMN team_name.abbr_name IS 'The abbreviation of the team name';


-- Index: fki_team_team_name

-- DROP INDEX fki_team_team_name;

CREATE INDEX fki_team_team_name
  ON team_name
  USING btree
  (team_id);


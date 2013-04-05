-- Table: team

CREATE TABLE team
(
  full_name text NOT NULL, -- Full name of the team
  team_id serial NOT NULL, -- Unique id for each team
  CONSTRAINT team_pkey PRIMARY KEY (team_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE team
  OWNER TO afl;
COMMENT ON TABLE team
  IS 'Represents an AFL team';
COMMENT ON COLUMN team.full_name IS 'Full name of the team';
COMMENT ON COLUMN team.team_id IS 'Unique id for each team';

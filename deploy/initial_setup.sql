-- Deploy aibasketball:initial_setup to pg

BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE videos (
  id uuid DEFAULT uuid_generate_v4(),
  user_id TEXT,
  name TEXT,
  description TEXT,
  is_processed BOOLEAN DEFAULT FALSE,
  angle_of_shot TEXT,
  type_of_shot TEXT,
  storage_uri TEXT,
  feedback JSONB,
  created_timestamp timestamptz DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
  id TEXT NOT NULL,
  email TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  date_of_birth timestamptz DEFAULT CURRENT_TIMESTAMP,
  last_updated timestamptz DEFAULT CURRENT_TIMESTAMP,
  created_timestamp timestamptz DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE results (
  id TEXT NOT NULL,
  user_id TEXT,
  score_prep TEXT NOT NULL
  score_exec TEXT NOT NULL
  score_follow TEXT NOT NULL
)

COMMIT;

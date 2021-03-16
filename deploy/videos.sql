-- Deploy gymbuddy:videos to pg

BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE videos (
  id uuid DEFAULT uuid_generate_v4(),
  user_id TEXT,
  name TEXT,
  description TEXT,
  is_processed BOOLEAN,
  angle_of_shot TEXT,
  type_of_shot TEXT,
  storage_uri TEXT,
  feedback JSONB NOT NULL,
  created_timestamp timestamptz NOT NULL
);

CREATE TABLE users (
  id TEXT NOT NULL,
  email TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  date_of_birth: timestamptz NOT NULL,
  created_timestamp timestamptz NOT NULL
);

COMMIT;

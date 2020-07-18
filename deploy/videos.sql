-- Deploy gymbuddy:videos to pg

BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE videos (
  video_id uuid DEFAULT uuid_generate_v4(),
  name TEXT,
  description TEXT,
  is_processed BOOLEAN,
  created_by TEXT, -- Should be user uuid
  storage_uri TEXT,
  feedback TEXT
);

COMMIT;

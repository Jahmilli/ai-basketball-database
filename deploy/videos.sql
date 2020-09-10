-- Deploy gymbuddy:videos to pg

BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE videos (
  video_id uuid DEFAULT uuid_generate_v4(),
  user_id TEXT, -- Should be user uuid
  name TEXT,
  description TEXT,
  is_processed BOOLEAN,
  angle_of_shot TEXT,
  type_of_shot TEXT,
  storage_uri TEXT,
  feedback TEXT,
  uploaded_timestamp timestamptz -- Check is this is correct...
);

COMMIT;

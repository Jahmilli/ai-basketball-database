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
  feedback TEXT,
  uploaded_timestamp timestamptz
);

INSERT INTO videos (user_id, name, description, is_processed, angle_of_shot, type_of_shot, storage_uri, feedback, uploaded_timestamp) VALUES ('test', 'test name', 'description test', 't', 'front facing', 'three pointer', 's3://dev-bucket/Threshholds.avi', '', current_timestamp);
COMMIT;

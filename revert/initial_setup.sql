-- Revert gymbuddy:videos from pg

BEGIN;

DROP TABLE users;
DROP TABLE videos;
DROP TABLE results
DROP EXTENSION "uuid-ossp";

COMMIT;

-- Revert gymbuddy:videos from pg

BEGIN;

DROP TABLE users;
DROP TABLE videos;
DROP EXTENSION "uuid-ossp";

COMMIT;

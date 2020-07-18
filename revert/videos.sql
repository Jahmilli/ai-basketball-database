-- Revert gymbuddy:videos from pg

BEGIN;

DROP TABLE videos;
DROP EXTENSION "uuid-ossp";

COMMIT;

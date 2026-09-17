-- DCL (Data Control Language)
CREATE USER 'operator'@'localhost'
IDENTIFIED BY 'operator123';

GRANT SELECT
ON db_sekolah.siswa
TO 'operator'@'localhost';

GRANT SELECT, INSERT, UPDATE
ON db_sekolah.siswa
TO 'operator'@'localhost';

GRANT ALL PRIVILEGES
ON db_sekolah.*
TO 'operator'@'localhost';

REVOKE UPDATE
ON db_sekolah.siswa
FROM 'operator'@'localhost';

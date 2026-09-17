-- DDL (Data Definition Language)
CREATE DATABASE db_sekolah;
USE db_sekolah;

CREATE TABLE siswa (
    id_siswa INT PRIMARY KEY AUTO_INCREMENT,
    nis VARCHAR(20),
    nama VARCHAR(100),
    kelas VARCHAR(20),
    jurusan VARCHAR(50)
);

ALTER TABLE siswa
ADD alamat VARCHAR(150);

-- DROP TABLE siswa;
-- TRUNCATE TABLE siswa;

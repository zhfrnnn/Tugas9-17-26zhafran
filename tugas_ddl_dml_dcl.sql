-- TUGAS BASIS DATA XII PPLG
-- DDL, DML, DAN DCL
-- Praktik Terpadu Bagian F

-- ==========================================
-- DDL - MEMBUAT DATABASE
-- ==========================================

CREATE DATABASE db_sekolah;

USE db_sekolah;

CREATE TABLE siswa (
    id_siswa INT PRIMARY KEY AUTO_INCREMENT,
    nis VARCHAR(20),
    nama VARCHAR(100),
    kelas VARCHAR(20),
    jurusan VARCHAR(50)
);

-- ==========================================
-- DML - MENAMBAHKAN DATA
-- ==========================================

INSERT INTO siswa (nis, nama, kelas, jurusan)
VALUES
('1001','Andi Saputra','XII PPLG 1','PPLG'),
('1002','Budi Santoso','XII PPLG 1','PPLG'),
('1003','Citra Lestari','XII PPLG 2','PPLG');

-- Menampilkan data
SELECT * FROM siswa;

-- Mengubah data
UPDATE siswa
SET kelas = 'XII PPLG 2'
WHERE id_siswa = 1;

-- Menghapus data
DELETE FROM siswa
WHERE id_siswa = 3;

-- ==========================================
-- DCL - MEMBUAT USER
-- ==========================================

CREATE USER 'operator'@'localhost'
IDENTIFIED BY 'operator123';

-- Memberikan hak SELECT, INSERT, UPDATE
GRANT SELECT, INSERT, UPDATE
ON db_sekolah.siswa
TO 'operator'@'localhost';

-- Mencabut hak UPDATE
REVOKE UPDATE
ON db_sekolah.siswa
FROM 'operator'@'localhost';

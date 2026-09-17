-- DML (Data Manipulation Language)
USE db_sekolah;

INSERT INTO siswa
(nis, nama, kelas, jurusan, alamat)
VALUES
('1001','Andi Saputra','XII PPLG 1','PPLG','Padang'),
('1002','Budi Santoso','XII PPLG 1','PPLG','Padang'),
('1003','Citra Lestari','XII PPLG 2','PPLG','Pariaman'),
('1004','Doni Pratama','XII PPLG 2','PPLG','Bukittinggi');

SELECT * FROM siswa;

SELECT nama, kelas, jurusan
FROM siswa;

SELECT *
FROM siswa
WHERE kelas = 'XII PPLG 1';

UPDATE siswa
SET alamat = 'Lubuk Begalung'
WHERE id_siswa = 1;

DELETE FROM siswa
WHERE id_siswa = 4;

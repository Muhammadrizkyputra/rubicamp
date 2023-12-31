.headers on                 -- untuk membuat tampilan menjadi head memunculkan row
.mode column                -- membuat tampilan database menjadi kolom

create table jurusan(
    id_jurusan character(5) primary key not null,
    nama_jurusan varchar(100) not null
);

insert into jurusan(id_jurusan, nama_jurusan) values
('J0001', 'SISTEM INFORMASI'),
('J0002', 'TEKNIK SIPIL'),
('J0003', 'ILMU KELAUTAN'),
('J0004', 'SASTRA INGGRIS'),
('J0005', 'MANAJAMEN'),
('JOO06', 'AKUTANSI'),
('J0007', 'SASTRA ARAB'),
('J0008', 'TEKNIK INDUSTRI'),
('J0009', 'ILMU PERTANIAN'),
('J0010', 'DKV');


create table dosen (
    nip character(5) primary key not null,
    nama_dosen varchar(100) not null
);

insert into dosen values
('D0001', 'ANDRI SUSANTO'),
('D0002', 'SULTAN WIBOWO'),
('D0003', 'VIAN WATI'),
('D0004', 'SURI WIDODO'),
('D0005', 'ANDRI'),
('D0006', 'USANTO'),
('D0007', 'WIBOWO'),
('D0008', 'WATI'),
('D0009', 'WIDODO'),
('D0010', 'RIA');

create table mahasiswa(
    nim character(5) primary key not null,
    nama varchar(100) not null, 
    alamat text,
    id_jurusan character(5) not null,
    foreign key (id_jurusan) references jurusan (id_jurusan)
);

insert into mahasiswa values
('00001', 'RIZKY', 'BANDUNG', 'J0001'),
('00002', 'PANJI', 'JAKARTA', 'J0002'),
('00003', 'FAHMI', 'PAPUA', 'J0003'),
('00004', 'IRSYAD', 'PADANG', 'J0004'),
('00005', 'FIKRI', 'MEDAN', 'J0005'),
('00006', 'ANSYAH', 'SURABAYA', 'J0006'),
('00007', 'YASMIN', 'JAKARTA', 'J0007'),
('00008', 'ANITA', 'PAPUA', 'J0008'),
('00009', 'APRILIANTO', 'PADANG', 'J0009'), 
('00010', 'ROMI', 'MEDAN', 'J0010');


create table mata_kuliah (
    id_matkul character(5) primary key not null,
    nama_matkul varchar(50) not null,
    sks character(5) not null
);

insert into mata_kuliah values
('SI101', 'ALGORITMA', '2'),
('TS203', 'ALJABAR', '3'),
('IK023', 'ZOOLOGI LAUT', '2'),
('SG109', 'PRONOUN', '3'),
('MM909', 'PAJAK', '2'),
('AK129', 'AKUNTAN', '2'),
('SA198', 'IQRO', '3'),
('TI567', 'KIMIA', '2'),
('TP192', 'AGRASI', '3'),
('DK202', 'ART AND PAINT', '2');


create table kontrak (
    id_kontrak integer primary key autoincrement,
    nip character(5) Not null,
    id_matkul character(5) not null,
    nim character(5) not null,
    nilai varchar(5) ,
    FOREIGN KEY(nip) REFERENCES dosen(nip),
    FOREIGN KEY(id_matkul) REFERENCES mata_kuliah(id_matkul),
    FOREIGN KEY(nim) REFERENCES mahasiswa(nim)
);

insert into kontrak (nip, id_matkul, nim, nilai) values
('D0001', 'SI101', '00001', 'A'),
('D0002', 'IK023', '00002', 'B'),
('D0003', 'TS203', '00003', 'A'),
('D0004', 'SG109', '00004', 'A'),
('D0005', 'IK023', '00005', 'E'),
('D0006', 'AK129', '00006', 'C'),
('D0007', 'SA198', '00007', 'A'),
('D0008', 'TI567', '00008', 'B'),
('D0009', 'TP192', '00009', 'E'),
('D0010', 'DK290', '00010', 'E');
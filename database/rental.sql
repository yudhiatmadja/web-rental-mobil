CREATE TABLE booking (
  kode_booking VARCHAR2(8) PRIMARY KEY,
  id_mobil NUMBER NOT NULL,
  tgl_mulai DATE NOT NULL,
  tgl_selesai DATE NOT NULL,
  durasi NUMBER NOT NULL,
  driver NUMBER NOT NULL,
  status VARCHAR2(20) NOT NULL,
  email VARCHAR2(100) NOT NULL,
  pickup VARCHAR2(30) NOT NULL,
  tgl_booking DATE NOT NULL,
  bukti_bayar VARCHAR2(100) NOT NULL
);

CREATE TABLE cek_booking (
  kode_booking VARCHAR2(8) PRIMARY KEY,
  id_mobil NUMBER NOT NULL,
  tgl_booking VARCHAR2(10) NOT NULL,
  status VARCHAR2(20) NOT NULL
);

CREATE TABLE contactus (
  id_cu NUMBER PRIMARY KEY,
  nama_visit VARCHAR2(100) DEFAULT NULL,
  email_visit VARCHAR2(120) DEFAULT NULL,
  telp_visit CHAR(16) DEFAULT NULL,
  pesan CLOB DEFAULT NULL,
  tgl_posting TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status NUMBER DEFAULT NULL
);

CREATE TABLE contactusinfo (
  id_info NUMBER PRIMARY KEY,
  alamat_kami CLOB DEFAULT NULL,
  email_kami VARCHAR2(255) DEFAULT NULL,
  telp_kami CHAR(11) DEFAULT NULL
);

CREATE TABLE mobil (
  id_mobil NUMBER PRIMARY KEY,
  nama_mobil VARCHAR2(150) DEFAULT NULL,
  id_merek NUMBER DEFAULT NULL,
  nopol VARCHAR2(20) NOT NULL,
  deskripsi CLOB DEFAULT NULL,
  harga NUMBER DEFAULT NULL,
  bb VARCHAR2(100) DEFAULT NULL,
  tahun NUMBER DEFAULT NULL,
  seating NUMBER DEFAULT NULL,
  image1 VARCHAR2(120) DEFAULT NULL,
  image2 VARCHAR2(120) DEFAULT NULL,
  image3 VARCHAR2(120) DEFAULT NULL,
  image4 VARCHAR2(120) DEFAULT NULL,
  image5 VARCHAR2(120) DEFAULT NULL,
  AirConditioner NUMBER DEFAULT NULL,
  PowerDoorLocks NUMBER DEFAULT NULL,
  AntiLockBrakingSystem NUMBER DEFAULT NULL,
  BrakeAssist NUMBER DEFAULT NULL,
  PowerSteering NUMBER DEFAULT NULL,
  DriverAirbag NUMBER DEFAULT NULL,
  PassengerAirbag NUMBER DEFAULT NULL,
  PowerWindows NUMBER DEFAULT NULL,
  CDPlayer NUMBER DEFAULT NULL,
  CentralLocking NUMBER DEFAULT NULL,
  CrashSensor NUMBER DEFAULT NULL,
  LeatherSeats NUMBER DEFAULT NULL,
  RegDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UpdationDate TIMESTAMP DEFAULT NULL
);
CREATE TABLE merek (
  id_merek NUMBER PRIMARY KEY,
  nama_merek VARCHAR2(120) NOT NULL,
  CreationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UpdationDate TIMESTAMP DEFAULT NULL
);
CREATE TABLE admin (
  id NUMBER PRIMARY KEY,
  UserName VARCHAR2(100) NOT NULL,
  Password VARCHAR2(100) NOT NULL,
  updationDate TIMESTAMP DEFAULT SYSTIMESTAMP
);
select *from admin;


CREATE SEQUENCE admin_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE booking_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE cek_booking_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE contactus_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE contactusinfo_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE merek_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE mobil_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE tblpages_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE users_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE users (
  id_user NUMBER PRIMARY KEY,
  nama_user VARCHAR2(120) DEFAULT NULL,
  email VARCHAR2(100) DEFAULT NULL,
  password VARCHAR2(100) DEFAULT NULL,
  telp CHAR(11) DEFAULT NULL,
  alamat VARCHAR2(255) DEFAULT NULL,
  ktp VARCHAR2(120) NOT NULL,
  kk VARCHAR2(120) NOT NULL,
  RegDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UpdationDate TIMESTAMP DEFAULT NULL
);

INSERT INTO admin (username, Password) VALUES ('admin', 'admin');



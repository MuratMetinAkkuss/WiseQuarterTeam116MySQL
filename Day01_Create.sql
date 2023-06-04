/* ===============================================
      TABLO OLUSTURMA 1 (CRUD - CREATE)
================================================*/
-- ID ISIM NOT ORTALAMASI ADRES VE SON DEGISTIRME TARIHI
-- FIELDLARI ICEREN BIR OGRENCILER TABLE'I OLUSTURUNUZ
use sys;
create table ogrenciler1 
(
id char(4),
isim varchar(25),
not_ortalamasi double,
adres varchar(100),
son_degistirme_tarihi date
);

select * from ogrenciler1
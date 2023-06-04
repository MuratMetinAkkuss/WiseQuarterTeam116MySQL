/* ====================================== UPDATE ========================================
Tabloda varolan herhangi bir record'a ait verinin degistirilmesi icin kullanilir.
-----Syntax-----
UPDATE table_name
SET field1=''
WHERE condition;
UPDATE islemlerinin yapilabilmesi icin Ayarlar -> SQL Editor -> "Safe Updates" check box'indaki
tik isaretini kaldirip kaydetmemiz gerekiyor, sonrasinda MySQL'i kapatip tekrar acmaliyiz
========================================================================================*/
/*--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
Id ve isim'i beraber Primary Key yapin.
---------------------------------------------------------------------------------------*/
use sys;
CREATE TABLE firmalar
(
id INT,
isim VARCHAR(20),
iletisim_isim VARCHAR(20),
CONSTRAINT firmalar_pk PRIMARY KEY (id, isim)
);
/*--------------------------------------------------------------------------------------
2) Icine 3 kayit ekleyin :
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez').
---------------------------------------------------------------------------------------*/
INSERT INTO firmalar VALUES 
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');
SELECT * FROM firmalar;

-- Id'si 3 olan firmanin ismini 'KRM' olarak guncelleyiniz.
update firmalar
set isim = 'KRM'
where id = 3;

-- Iletisim ismi Veli Gul olan firmanin id'sini 4, ismini FDS olarak guncelleyiniz.
update firmalar 
set id = 4, isim = 'FDS'
where isim = 'Veli Gul';


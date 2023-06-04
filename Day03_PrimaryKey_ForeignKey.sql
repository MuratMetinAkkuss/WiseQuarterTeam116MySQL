-- birden fazla tablonun iliskisini tanimlamak icin en az 1 tane primary key olmalidir
-- bir tabloda max 1 tane primary key olabilir
-- foreign key dublicate kabul eder, null deger kabul eder ve bir tabloda birden fazla foregin key olabilir
-- bir primary key ayni zamanda kendi tablosunda foregin key olabilir

/*====================================== PRIMARY KEY ==============================================
1) Primary Key bir record'u tanimlayan bir field veya birden fazla field'in kombinasyonudur. // composite denir
2) Primary Key Unique'dir. 
3) Bir tabloda en fazla bir Primary Key olabilir .
4) Primary Key field'inda hic bir data NULL olamaz.
-----Syntax-----
 "id" field'ini "primary key" yapmak icin 2 yol var.
1) Data Type'dan sonra "PRIMARY KEY" yazarak.
 
 CREATE TABLE students_table 
(
 id int PRIMARY KEY,
 name varchar(50) NOT NULL,
 grade int,
 adres varchar(100),
 last_update date 
);
2) CONSTRAINT Keyword Kullanilarak Primary Key Tanimlanabilir; 
"CONSTRAINT constraintName PRIMARY KEY(column1, column2, ... column_n)" 
CREATE TABLE students 
(
id int,
name varchar(50) NOT NULL,
grade int,
address varchar(100),
last_modification date, 
CONSTRAINT id_pk PRIMARY KEY (id) 
);
================================================================================================*/

/*---------------------------------------------------------------------
"sehirler" isimli bir Table olusturun. 
Tabloda "alan_kodu", "isim", "nufus" field'lari olsun. 
Isim field'i bos birakilamasin. 
1.Yontemi kullanarak "alan_kodu" field'ini "Primary Key" yapin
-----------------------------------------------------------------------*/

create table sehirler (
alan_kodu int PRIMARY KEY,
isim varchar(25) not null,
nufus double
);

/*------------------------------------------------------------------------------
"ogretmenler" isimli bir Table olusturun. 
Tabloda "id", "isim", "brans", "cinsiyet" field'lari olsun. 
Id field'i tekrarli deger kabul etmesin. 
2.Yontemi kullanarak "id ve isim" field'lerinin birlesimini "primary key" yapin 
-------------------------------------------------------------------------------*/

create table ogretmenler (
id int unique,
isim varchar(25),
brans varchar(10),
cinsiyet varchar(10),
constraint id_pk primary key(id,isim)
);
-- composite key olarak bir primary key atadigimizda constraint koduyle yapmamiz gerekir, kac field isteniyorsa pk olarak atanir

/*------------------------------------------------------------------------------
"universite_ogrenci_bilgi_sistemi" isimli bir Table olusturun. 
Tabloda "giris yili", "giris siralamasi", "isim", "bolum" field'lari olsun. 
isim field'i null deger kabul etmesin. 
2.Yontemi kullanarak "giris yili ve giris siralamasi" field'lerinin birlesimini
 "primary key" yapin 
-------------------------------------------------------------------------------*/

create table universite_ogrenci_bilgi_sistemi (
giris_yili char(10),
giris_siralamasi int,
isim varchar(15) not null,
bolum varchar(25),
constraint pk_gy_gs primary key(giris_yili,giris_siralamasi)
);

select * from universite_ogrenci_bilgi_sistemi;

insert into universite_ogrenci_bilgi_sistemi values
(
'20,15,2020',25,'metin','kamu'
);

/*====================================== FOREIGN KEY ==============================================
=> Foreign Key iki tablo arasinda Relation olusturmak icin kullanilir. 
=> Foreign Key baska bir tablonun Primary Key'ine baglidir. 
=> Referenced table (baglanilan tablo, Primary Key'in oldugu Tablo) parent table olarak adlandirilir. 
   Foreign Key'in oldugu tablo ise child table olarak adlandirilir. 
=> Bir Tabloda birden fazla Foreign Key olabilir. 
=> Foreign Key NULL degeri alabilir. 
=> Foreign Key duplicate olabilir. 

**********************************************
Note 1: "Parent Table"da olmayan bir id'ye sahip datayi "Child Table"'a ekleyemezsiniz .
Note 2: Child Table'i silmeden Parent Table'i silemezsiniz. Once "Child Table" silinir, sonra "Parent Table" silinir.
***************************************************************


-----Syntax-----
CONSTRAINT constraintName FOREIGN KEY(table_name_id) 
REFERENCES parent_table (parent_table_field_name) 
CREATE TABLE table_name
(
id char(10),
name char(10),
CONSTRAINT constraint_name 
FOREIGN KEY (table_name_id) 
REFERENCES parent_table (parent_table_field_name) 
);
        
==================================================================================================*/

CREATE TABLE tedarikci
(
tedarikci_id char(10) primary key,
tedarikci_name varchar(10),
iletisim_isim varchar(25)
);

create table urunler (
tedarikcinin_id char(10),
urun_id int,
constraint urunler_fk FOREIGN KEY(tedarikcinin_id)
references tedarikci (tedarikci_id)
);

/*------------------------------------------------------------------------
"bebeler" isimli bir tablo olusturun. 
Tabloda "id", "isim", "iletisim" field'lari olsun 
ve "id" yi Primary Key yapin.
 "notlar" isminde baska bir tablo olusturun "bebe_id" ve "puan"
 field'lari olsun ve "bebe_id" yi Foreign Key yapin.
---------------------------------------------------------------------------*/
create table bebeler(
id int primary key,
isim varchar(10),
iletisim int
);

create table notlar(
bebe_id int,
puan double,
constraint bebe_fk foreign key(bebe_id)references bebeler (id)
);


create table kamp(
kamper_no int primary key,
kamper_name varchar(10),
kamper_lastname varchar(10),
kamper_tel int 
);

create table kamper_kamp_bilgisi (
kamper_no int, 
kamper_oda_no int,
kamper_sorumlusu varchar(20),
constraint kamper_fk foreign key(kamper_no)references kamp (kamper_no)
);





-- ************************ Kelimeler Tablosundan *******************************
/*-------------------------------------------------------------------------
Q1: 3 harfli kelimeleri listeleyin
---------------------------------------------------------------------------*/

select kelime
from kelimeler
where kelime like '___';

/*-------------------------------------------------------------------------
Q2: En az 3 harfli kelimeleri listeleyin
---------------------------------------------------------------------------*/

select kelime
from kelimeler
where kelime like '___%';


/*-------------------------------------------------------------------------
Q3: H ile baslayip t ile biten kelimeleri listeleyin
---------------------------------------------------------------------------*/

select kelime
from kelimeler
where kelime like 'h%t';



select * from kelimeler ;


/*-------------------------------------------------------------------------
Q4: H ile baslayip t ile biten kelimeleri case sensitive listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
where regexp_like(kelime,'^H.*T$','i');

select * from kelimeler;
/*-------------------------------------------------------------------------
Q5: H ile baslayip t ile biten 3 harfli kelimeleri case sensitive listeleyin
---------------------------------------------------------------------------*/

select kelime
from kelimeler
where regexp_like(kelime,'^h[!-~]t$', 'c');


/*-------------------------------------------------------------------------
Q6: 3 ya da daha az karakterli kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime
from kelimeler
where kelime like '___' or kelime like '__' or kelime like '_';
/*-------------------------------------------------------------------------
Q7: id'si 8 rakamini iceren kelimeleri listeleyin
---------------------------------------------------------------------------*/
select kelime,id
from kelimeler
where id like '%8%';




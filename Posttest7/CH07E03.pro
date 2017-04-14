/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* mendekarasikan list dengan tipe data integer */

predicates
  length_of(list,integer,integer) - procedure (i,o,i)/*length_of dideklarasikakn  dengan  masukan list dan tipe data yang sesuai dengan urutan integer,integer serta tipe input,output dan input*/

clauses
  length_of([], Result, Result)./*pencarian dengan argumen yang akan sama dengan clauses ini.adalah [] (kurung kotak yang kosong merupakan sebuah ekor) */
  length_of([_|T],Result,Counter):-
	NewCounter = Counter + 1,/*menambahkan sebuah nilai perhitungan */
	length_of(T, Result, NewCounter)./*ini merupakan rekursi untuk memanggil kembali clauses yang kedua, yang berbeda pada list ini hanya akan diambil dari tail list sebelumnya
					    sehingga saat rekursi jumlah elemen list akan semakin berkurang*/

goal
  length_of([1,2,3],L,0). /* maka goal akan mencari panjang list dengan perhitungan dimuali dari angka nol */
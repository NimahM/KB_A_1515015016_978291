/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* mendekarasikan list dengan tipe data integer */

predicates
  length_of(list,integer) - procedure (i,o) %/*length_of dideklarasikakn  dengan  masukan list dan tipe data integer serta tipe input dan output

clauses
  length_of([], 0). /*pencarian dengan argumen yang akan sama dengan clauses ini.adalah [] (kurung kotak yang kosong merupakan sebuah ekor)  dan perhitungan panjang akan dimulai dari 0
  length_of([_|T],L):-
	length_of(T,TailLength), %dikerjakan untuk memanggil kembali klausa kedua dengan list yang elemennya berkurang karena list berikutnya hanya akan memakai tail atau ekor dari list yang sebelumnya
	L = TailLength + 1. %menambahkan perhitungan panjang list setiap kali clauses ini berjalan

goal
  length_of([1,2,3],L).%maka goal yang dihasilkan akan menghasilkan list 1,2,3 dan mencari nilai dari L yang merupakan nilai panjang dari sebuah list.
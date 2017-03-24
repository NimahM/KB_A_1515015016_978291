DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol   
umur=integer

PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)
nondeterm selingkuh(nama, nama)
terbunuh_dengan(nama, benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
ternodai(nama, zat)
milik(nama, benda)
nondeterm cara_kerja_mirip(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)

CLAUSES							
orang(budi,55,m,tukang_kayu).
orang(aldi,25,m,pemain_sepak_bola).
orang(aldi,25,m,tukang_jagal).
orang(joni,25,m,pencopet).
selingkuh(ina,joni).
selingkuh(ina,budi).
selingkuh(siti,joni).
terbunuh_dengan(siti,pentungan).
terbunuh(siti).

motif(uang).
motif(cemburu).
motif(dendam).

ternodai(budi, darah).
ternodai(siti, darah).
ternodai(aldi, lumpur).
ternodai(joni, coklat).
ternodai(ina, coklat).
milik(budi,kaki_palsu).
milik(joni,pistol).

cara_kerja_mirip(kaki_palsu, pentungan).
cara_kerja_mirip(balok, pentungan).
cara_kerja_mirip(gunting, pisau).
cara_kerja_mirip(sepatu_bola, pentungan).

kemungkinan_milik(X,sepatu_bola):-
orang(X,_,_,pemain_sepak_bola).
kemungkinan_milik(X,gunting):-
orang(X,_,_,pekerja_salon).
kemungkinan_milik(X,Benda):-
milik(X,Benda).

dicurigai(X):-
terbunuh_dengan(siti,Senjata) ,
cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).

dicurigai(X):-
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X).

dicurigai(X):-
motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).

dicurigai(X):-
motif(uang),
orang(X,_,_,pencopet).
pembunuh(Pembunuh):-
orang(Pembunuh,_,_,_),
terbunuh(Terbunuh),
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),
ternodai(Pembunuh,Zat),
ternodai(Terbunuh,Zat).

GOAL
pembunuh(X).



									/* analisis program pembunuhan */
				
/*	ketika program dijalankan, pada awalnya program akan melakukan suatu proses di section clauses, mengidentifikasi data-data orang yang ada pada pendeklarasian clauses.
 dari pengidentifikasian tersebut akan ditemukan data yang yang terlibat dalam kasus tersebut.
 dari fakta yang terlihat, argumen x merupakan argumen pembunuh. utuk argumen pembunuh itu sendiri sudah terdapat beberapa peryataan persyaratan dan kemudian program
 akan akan melakukan unifikasi terhadap pernyataan tersebut. program akan mencari fakta-fakta orang yang menegetahui pembunuh dalam kasus ini. 
 pernyataan pertama ialah budi.
 	kemudian program akan mencari pernyataan terbunuh, maka fakta yang ditemukan adalah siti . kemudian program kembali melakukan sebuah pencrian pernyataan siapa yang dicurigai dicurigai(x),
 program akan melakukan unifikasi kembali terhadap pernyataan syarat-syarat tersebut. 
 Kemudian program akan mencari senjata yang di pakai untuk membunuh, dengan melakukan proses di variable terbunuh_dengan. Maka fakta yang diperoleh ialah terbunuh_dengan(siti, pentungan).
 program melakukan proses pencarian fakta benda yang cara kerjanya seperti senjata, maka diperoleh cara_kerja_mirip(Benda, Senjata). 
 Kemudian prolog memanggil pernyataan tersebut untuk mengetahui benda yang cara kerjanya mirip pentungan yang telah di eksekusi pada langkah sebelumnya. 
 maka fakta yang didapat ialah cara_kerja_mirip(kaki_palsu, pentungan). 
 Setelah itu program akan melakukan prose fakta dari variable kemungkinan_milik(X, Benda), milik (X, Benda). 
 Dari pernyataan tersebut, program akan mencari fakta bahwa siapa pemilik kaki palsu,  dan hasilnya milik(budi, kaki_palsu).======= Jadi kaki_palsu tersebut adalah milik Budi =========
 	Setelah itu program kembali menjalankan proses pernyataan dari pembunuh karena masih ada pernyataan yang belum diproses, yaitu pada variable ternodai(Pembunuh, Zat).
 Maka dijalankanlah proses ke dalam pernyataan tersebut, yang menyangkut nama/kata budi, maka hasilnya didapat ternodai(budi, darah). 
	Kemeudian program melakukan proses terakhir yaitu pada ternodai(Terbunuh, Zat). Maka akan di dapat hasil ternodai(siti, darah). 
 Dan kesimpulan dari pernyataan-pernyataan serta fakta-fakta yang telah ada,
 alhasil siti memiliki noda sama persis dengan budi. atas kesamaan fakta-fakta tersebut, maka hasilnya(goal) sudah pasti bahwa budilah yang telah membunuh siti. */


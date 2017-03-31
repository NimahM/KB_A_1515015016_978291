DOMAINS
benda = buku(judul, pengarang) ;%buku memiliki 2 argumen yang berisi judul serta pengarang
kuda(nama) ; %kuda memiliki 1 argumen yang berisi nama
kapal ;
bukubank(saldo)%bukubank memiliki 1 argumen yang berisi saldo
judul, pengarang, nama = symbol   %judul, pengarang serta nama bertipe data symbol
saldo = real%saldo bertipe data real karena angka saldo bisa saja berukuran besar atau nilai yang sangat banyak.

PREDICATES
nondeterm milik(nama,benda)% predikat menjelaskan sebuah kepemilikan, yang mana seorang nama memiliki benda

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).  % merupakan sekumpulan clausa
milik(erwin, kuda(buraq)).
milik(erwin, kapal).
milik(erwin, bukubank(1000)).

GOAL
milik(erwin, Benda).%output yang dihasilkan adalah semua benda milik erwin(buku, kuda, kapal dan bukubank) karena program mengidentifikasi semua clausa clausa yang ada yaitu terutama argumen benda milik.

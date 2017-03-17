DOMAINS
merek,warna = symbol % merek dan warna merupakan sebuah simbol, karena simbol itu sendiri digunakan untuk huruf atau karakter. 
usia = byte  % usia merupakan sebuah byte, mengapa menggunakan byte? itu karena byte digunakan untuk angka.
harga, kilometer = ulong % harga dan kilometer merupakan sebuah ulong,ulong sendiri digunakan untuk angka dimana angka yang memiliki kapasistas lebih besar.

PREDICATES
nondeterm mobil(merek,kilometer,usia,warna,harga) % untuk mendeklarasi dalam section CLAUSES,dimana dalam clauses tersebut diisi dengan apa yang digunakan dalam deklarasi,
						  % untuk susunan ini mobil sudah memiliki parameter yang telah dinama lainkan pada domains diatas
						  % dengan ususunan yang berurut yaitu merek,kilometer,usia,warna,harga, Sehingga ketika dipanggil dalam GOAL deklarasi akan terdeteksi keberadaanya.

CLAUSES
mobil(atoz,130000,3,merah,120000000).   %ini merupakan deklarasi dalam predikat tersebut untuk dipanggil dalam section GOAL.
mobil(karimun,90000,4,silver,100000000).
mobil(ceria,8000,1,hitam,75000000).

GOAL
mobil(karimun, 90000,4, silver, 100000000). % Goal ini akan menghasilkan inputan "YES" , itu karena pemanggilan isi ke section clauses terdeteksi adanya pernyataan yang sama.
					    % Apabila GOAL tersebut dipanggil dalam isi section clauses tidak sama, maka goal tersebut tidak dapat mendeteksi apa yang ada dalam isi section clauses.
					    % maka hasilnya akan "NO". Goal ini merupakan sebuah pernyataan.
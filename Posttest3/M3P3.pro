PREDICATES
nondeterm suka(symbol,symbol) %untuk mendeklarasi dalam section CLAUSES,dimana dalam clauses tersebut diisi dengan apa yang digunakan dalam deklarasi
			      %Sehingga ketika dipanggil dalam GOAL deklarasi akan terdeteksi keberadaanya. yaitu suka yang berisi dua symbol secara berurut.

CLAUSES
suka(asep,membaca).           %ini merupakan deklarasi dalam predikat tersebut untuk dipanggil dalam section GOAL.
suka(asari,computers).
suka(nunung,bulutangkis).
suka(vida,bulutangkis).
suka(astana,renang).
suka(astana,membaca).

GOAL
suka(Orang, membaca), %antara satu query dengan query yang lain dipisahkan dengan tanda koma (,) 
suka(Orang, renang).  % “Siapakah orang yang suka renang dan sekaligus suka membaca?”. maka sudah jelas hasil output hanya memiliki satu solusi yaitu "Orang=astana" karena pemanggilan isi ke section clauses terdeteksi adanya pernyataan yang sama.
		      % yaitu suka(astana,renang) dan suka(astana,membaca).
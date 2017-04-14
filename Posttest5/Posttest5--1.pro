DOMAINS
orang = orang(nama,alamat)				%orang memiliki 2 argumen yaitu nama dan alamat
nama = nama(pertama,kedua)				%nama memiliki 2 argumen yaitu nama pertama dan nama kedua
alamat = alamat(jalan,kota_kab,propinsi)		%alamat memiliki 3 argumen yaitu jalan, kota kabupaten dan propinsi
jalan = jalan(nama_jalan,nomor)				%jalan memiliki 2 argumen yaitu nama jalan dan nomor jalan
kota_kab,propinsi,nama_jalan = string			%kota kabupaten, propinsi dan nama jalan bertipe data string
pertama,kedua = symbol					%nama pertama dan nama kedua dengan tipe data simbol
nomor = integer						%nomor dengan tipe data integer

GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
P1 = orang(nama(_,fatihah),Alamat),			%orang dengan nama yang pertama adalah anonymous dan nama kedua fatihah, alamat sama dengan p1
P2 = orang(nama(nur,fatihah),Alamat),			%orang dengan nama yang pertama adalah nur dan nama kedua fatihah, alamat sama dengan p1
write("P1=",P1),nl,
write("P2=",P2),nl.
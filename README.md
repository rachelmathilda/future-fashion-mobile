### Tugas 9 

1. Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model. Akan tetapi, membuat model terlebih dahulu lebih baik dibanding langsung mengambil data JSON. Hal ini dikarenakan dengan adanya model maka ada fitur untuk validasi dan memproses data 

2. CookieRequest berfungsi untuk mengintegrasikan proyek flutter dengan proyek django yang ada sebelumnya 

Perlu dibagikan ke semua komponen di aplikasi Flutter agar bisa mengimplementasikan integrasi dengan proyek django yang dimiliki

3. Mekanisme pengambilan data dari JSON : 
- pertama mendefine url dari endpoint jsonnya terlebih dahulu
- kemudian menggunakan http.get dia mengambil data dari url yang ada. hasilnya diassign ke var response 
- setelah itu, response di decode dengan jsondecode. hasilnya di assign ke var data 
- kemudian, kita bisa mengiterasi data json yang ada di var data untuk ditampilkan di aplikasi flutter

4. Mekanisme autentikasi dari input data akun pada Flutter ke Django: 
- dengan CookieRequest, memanfaatkan method .login nantinya di dalam method tersebut di passing url login di proyek django sebelumnya serta data username dan passwordnya
- request 
- 

5. Widget yang dipakai: 


6. Implementasi checklist: 
    * melakukan deploy ulang di github 
    * membuat file bernama login.dart di screens yang melakukan request ke auth/login di app django 
    * membuat app baru di django bernama authentikasi yang memiliki fungsi login dan logout. mengintegrasikannya dengan meletakkan provider di main.dart dan cookierequest di setiap komponen aplikasi 
    * membuat model kustom => copy endpoint json yang ada di proyek django ke quicktype. lalu membuat models yang isinya item.dart dimana merupakan model item 
    * membuat halaman list_item.dart di screens yang akan mengiterasi item yang ada di json di proyek django yang ada sebelumnya 
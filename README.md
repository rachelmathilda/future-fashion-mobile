### Tugas 9 

1. Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model. Akan tetapi, membuat model terlebih dahulu lebih baik dibanding langsung mengambil data JSON. Hal ini dikarenakan dengan adanya model maka ada fitur untuk validasi dan memproses data 

2. CookieRequest berfungsi untuk mengintegrasikan proyek flutter dengan proyek django yang ada sebelumnya.
Perlu dibagikan ke semua komponen di aplikasi Flutter agar bisa mengimplementasikan integrasi dengan proyek django yang dimiliki. 

3. Mekanisme pengambilan data dari JSON : 
- pertama mendefine url dari endpoint jsonnya terlebih dahulu
- kemudian menggunakan http.get dia mengambil data dari url yang ada. hasilnya diassign ke var response 
- setelah itu, response di decode dengan jsondecode. hasilnya di assign ke var data 
- kemudian, kita bisa mengiterasi data json yang ada di var data untuk ditampilkan di aplikasi flutter

4. Mekanisme autentikasi dari input data akun pada Flutter ke Django: 
- pertama aplikasi flutter meminta data username dan password user
- selanjutnya, memanfaatkan method .login yang ada di CookieRequest nantinya di dalam method tersebut di passing url login di proyek django sebelumnya serta data username dan passwordnya
- username dan password yang ada kemudian diolah oleh fungsi yang login yang ada di proyek django sebelumnya
- di CookieRequest ada atribut loggedIn untuk mengecek apakah user sudah log in atau belum

5. Untuk widget bawaan flutter kurang lebih sama dengan tugas sebelumnya. sudah dijelaskan di tugas2 sebelumnya juga. Jadi saya hanya akan menjelaskan custom widget yang saya buat untuk tugas 9 ini, diantaranya: 
- LoginApp => untuk kerangka kerja halaman login 
- LoginPage (StatefulWidget) => halaman dari login yang dibangun dengan widget Scaffold yang isinya memanfaatkan widget Container, Column,  TextField, SizedBox, ElevatedButton, Text, dan AlertDialog 
- ItemPage => custom page untuk nampilin data item yang ada. Dibangun dengan memanfaatkan widget FutureBuilder, Column, SizedBox, Text, Scaffold, ListView, dan lain sebagainya 
- LeftDrawer => widget custom yang berfungsi untuk menampilkan tampilan (seperti navigasi bar) yang memiliki opsi halaman utama, tambah item, dan daftar item. Dibangun dengan memanfaatkan ListTile, Text, Padding, Drawer, DrawerHeader, Column, BoxDecoration, dan lain sebagainya
- SizedBox => memberikan batasan ukuran pada widget anaknya

6. Implementasi checklist: 
    * melakukan deploy ulang di github 
    * membuat file bernama login.dart di screens yang melakukan request ke auth/login di app django 
    * membuat app baru di django bernama authentikasi yang memiliki fungsi login dan logout. mengintegrasikannya dengan meletakkan provider di main.dart dan cookierequest di setiap komponen aplikasi 
    * membuat model kustom => copy endpoint json yang ada di proyek django ke quicktype. lalu membuat models yang isinya item.dart dimana merupakan model item 
    * membuat halaman list_item.dart di screens yang akan mengiterasi item yang ada di json di proyek django yang ada sebelumnya 
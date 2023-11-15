### Tugas 8

1. Navigator.push() akan menambahkan route ke dalam stack route yang dikelola oleh Navigator. Route baru akan diletakkan di paling atas stack, sehingga route itu yang akan ditampilkan kepada pengguna. 

Sedangkan Navigator.pushReplacement() akan mengganti route yang palig atas stack dengan route baru. Jadi route lama yang ada di atas stack route akan dihapus kemudian route baru diletakkan diatasnya. 

2. Layout widget pada flutter: 
    * Container => widget dasar untuk ngatur tata letak, ukuran, dan dekorasi
    * Row => ngatur children dalam satu baris 
    * Column => ngatur children dalam satu kolom
    * Stack => widget yang numpukin anak-anaknya. tiap anak saling tumpang tindih satu sama lain
    * ListView => widget yang scrollable
    * GridView => widget yang nampilin daftar dalam grid 
    * Wrap => ngatur children dalam baris atau kolom. jika sudah melebihi batas lebar atau tinggi dipindahin ke baris atau kolom lain selanjutnya
    * Expanded & Flexible => ngontrol gimana widgetnya nempatin ruang di row, column, atau flex

3. Elemen input pada form yang saya gunakan adalah TextFormField. Saya menggunakan elemen input tersebut adalah karena penggunaannya yang mudah. TextFormField menyediakan input validator untuk memastikan bahwa input sudah memenuhi syarat tertentu serta state management yang akan otomatis mengelola suatu nilai yang ada.

4. Di flutter, clean architecture diimplementasikan dengan membagi kode menjadi beberapa lapisan yang saling terisolasi. Lapisan yang ada diantaranya adalah entities, use cases, interfaces, lapisan data, frameworks, dan drivers. 

Pada app ini saya menerapkan clean architecture dengan meletakkan left_drawer kedalam suatu folder widgets

5. Implementasi checklist: 
- Membuat halaman formulir 
    * saya membuat halaman baru bernama ShopFormPage yang berisi sebuah form
    * Form tersebut menggunakan tiga elemen input berupa name, amount, price, dan description. Jenis elemen input yang digunakan untuk mengubah data tersebut adalah TextFormField. 
    * Pada elemen input tersebut, ada sebuah properti validator yang mengecek bahwa elemen input tersebut tidak boleh kosong dan harus berisi data dengan tipe data atribut modelnya 
    * Pada form tersebut ada juga tombol save yang memanfaatkan ElevatedButton dimana button tersebut akan memunculkan AlertDialog form yang ada dan mereset formnya 

- Membuat tombol Tambah Item yang mengarahkan ke halaman form 
    * Saya membuat sebuah custom widget bernama Button yang akan mereturn ElevatedButton.icon dimana ketika di press dia akan menjalankan perintah navigator.push ke ShopFormPage
    * Saya menghias buttonnya dengan bg color warna hijau dan icon 

- Membuat drawer pada aplikasi 
    * Saya membuat drawer di left_drawer yang ada di widgets. 
    * Saya memanfaatkan Drawer dengan layout ListView yang berisi DrawerHeader dan 2 ListTile dimana ListTile yang pertama ketika di tap akan menuju ke home page (memanfaatkan Navigator.pushReplacement()) sedangkan ListTile yang kedua ketika di tap akan menuju form untuk menambahkan item (memanfaatkan Navigator.push()).
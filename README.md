1. Stateless widget adalah widget yang keadaannya tidak bisa diubah. contohnya Icon, IconButton, dan Text

Stateful widget adalah widget yang dinamik (keadannya bisa diubah). contohnya Checkbox, Radio, Slider, Form, dan TextField

2. * MyApp => widget utama yang ngereturn MaterialApp 
* MaterialApp => konfigurasi aplikasi yang ngatur tema, rute, judul, dan sebagainya 
* MyHomePage => stateless widget yang nampilin Scaffold dan beberapa tombol  
* Scaffold => nentuin kerangka kerja untuk bangun aplikasi
* AppBar => nampilin bar atas untuk judul aplikasi 
* Center => buat childrennya untuk disusun berdasarkan kolom vertikal 
* Column => nyusun anak secara vertikal dari atas ke bawah
* MyButton => stateless widget custom yang nampilin ElevatedButton.icon, button yang ada ikon dan teksnya 
* ElevatedButton.icon => button yang punya icon dan text 
* ScaffoldMessenger => widget yang berisi APIs untuk nampilin SnackBar atau material lain
* SnackBar => semacam notifikasi di bagian bawah bar 
* Icon => nampilin ikon grafis 
* Text => nampilin teks 

3. Implementasi checklist 
    * Untuk membuat program flutter saya menjalankan command flutter create (nama aplikasi) 

    * Untuk membuat tiga tombol sederhana dengan ikon dan teks saya membuat sebuah class MyButton yang memiliki atribut IconData icon dan String text, pada bagian widget buildnya akan me return ElevatedButton.icon yang memiliki properti onPressed untuk mengatur apa yang terjadi ketika tombol ditekan, properti icon yang berisi widget Icon berdasarkan IconData icon yang ada, properti label yang berisi widget Text berdasarkan String text yang ada, dan properti style untuk pengerjaan bonus yaitu mengimplementasikan warna yang berbeda untuk setiap tombol

    * Untuk memunculkan snackbar dengan tulisan 
    pada bagian onPressed saya membuat ScaffoldMessenger.of(context).showSnackBar( berisi snackbar) dimana SnackBarnya memiliki content berupa Text 'Kamu telah menekan tombol $text', $textnya berdasarkan nama buttonnya 
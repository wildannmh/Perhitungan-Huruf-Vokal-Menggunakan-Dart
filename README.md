<h2>
  Nama: Wildan Munawwar Habib <br>
  NIM: H1D023045 <br>
  Shift Awal: F <br>
  Shift Baru: E <br>
</h2>

<h1> Penjelasan Kode</h1>
Program di atas berfungsi untuk menghitung jumlah huruf vokal (a, i, u, e, o) dalam sebuah kalimat yang dimasukkan oleh pengguna.
Berikut adalah penjelasan dari setiap baris kode:

- import 'dart:io';
Baris ini mengimpor pustaka (library) dart:io yang berisi fungsi-fungsi untuk operasi Input/Output. Ini diperlukan agar program bisa membaca input dari keyboard (stdin) dan menampilkan output ke konsol (stdout dan print).

- void main() { ... }
Ini adalah fungsi utama, titik awal di mana eksekusi program dimulai.

- print(...) dan stdout.write(...)
Baris-baris print di awal digunakan untuk menampilkan judul aplikasi dan mengambil input dari pengguna.

- String? kalimat = stdin.readLineSync();
Fungsi ini membaca semua yang diketik pengguna di konsol sampai pengguna menekan 'Enter'.
Hasil ketikan tersebut disimpan dalam variabel kalimat. Tipe datanya adalah String? (String yang bisa null) untuk mengantisipasi jika terjadi kegagalan saat membaca input.

- if (kalimat == null || kalimat.isEmpty) { ... }
Ini adalah blok validasi input.

- String kalimatkecil = kalimat.toLowerCase();
Membuat variabel baru kalimatkecil yang menyimpan versi kalimat input yang sudah diubah menjadi huruf kecil semua.

- Set<String> aiueo = {'a', 'i', 'u', 'e', 'o'};
Membuat sebuah struktur data Set (kumpulan data unik) yang berisi daftar huruf vokal.

- int jumlahaiueo = 0;
Mendeklarasikan variabel jumlahaiueo dengan nilai awal 0. Variabel ini berfungsi sebagai counter atau penghitung yang akan menyimpan total huruf vokal yang ditemukan.

- for (int i = 0; i < kalimatkecil.length; i++) { ... }
Ini adalah loop (perulangan) for yang akan "menyisir" string kalimatkecil huruf demi huruf.
Loop ini dimulai dari indeks i = 0 (huruf pertama) dan terus berjalan selama i kurang dari panjang total kalimat (kalimatkecil.length).

- String char = kalimatkecil[i];
Di dalam setiap putaran loop, baris ini mengambil satu karakter pada posisi i saat ini dan menyimpannya di variabel char.

- if (aiueo.contains(char)) { ... }
Ini adalah inti logika program. Program memeriksa: "Apakah karakter (char) saat ini ada di dalam Set vokal (aiueo)?".

- jumlahaiueo++;
Jika kondisi if di atas bernilai true (artinya karakter tersebut adalah 'a', 'i', 'u', 'e', atau 'o'), maka nilai variabel jumlahaiueo akan ditambah satu.

- "$kalimat": Menampilkan kembali kalimat asli yang dimasukkan pengguna (bukan yang versi huruf kecil).

- $jumlahaiueo: Menampilkan nilai akhir dari total vokal yang telah dihitung.

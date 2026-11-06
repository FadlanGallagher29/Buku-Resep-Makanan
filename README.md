Buku Resep Masakan

Aplikasi mobile sederhana berbasis Flutter dan Dart untuk menampilkan berbagai resep masakan. Data resep disimpan menggunakan file JSON sehingga dapat diperbarui tanpa mengubah kode program.

Fitur Aplikasi

- Menampilkan daftar resep masakan.
- Menampilkan nama dan tingkat kesulitan resep.
- Menampilkan lama memasak.
- Menampilkan detail resep.
- Menampilkan daftar bahan masakan.
- Menampilkan langkah-langkah memasak.
- Navigasi antara halaman utama dan halaman detail.

Teknologi yang Digunakan

- Flutter
- Dart
- JSON
- Material Design 3
- GitHub Actions

Struktur Folder

buku_resep/
├── .github/
│   └── workflows/
│       └── build-apk.yml
├── assets/
│   └── data/
│       └── resep.json
├── lib/
│   ├── models/
│   │   └── resep_model.dart
│   ├── controllers/
│   │   └── resep_controller.dart
│   ├── views/
│   │   ├── home_view.dart
│   │   └── detail_view.dart
│   ├── widgets/
│   │   └── resep_card.dart
│   └── main.dart
├── .gitignore
├── analysis_options.yaml
├── pubspec.yaml
└── README.md

Cara Menjalankan Aplikasi

1. Clone repository:
   
   git clone https://github.com/USERNAME/buku_resep.git

2. Masuk ke folder project:
   
   cd buku_resep

3. Install dependency:
   
   flutter pub get

4. Jalankan aplikasi:
   
   flutter run

Build APK Melalui GitHub

Project ini menggunakan GitHub Actions untuk membuat APK secara otomatis.

Langkah-langkah:

1. Upload seluruh project ke repository GitHub.
2. Buka menu Actions.
3. Pilih workflow Build APK Flutter.
4. Klik Run workflow jika ingin menjalankan build secara manual.
5. Tunggu proses build sampai selesai.
6. Buka hasil workflow yang berhasil.
7. Download artifact bernama "buku-resep-release-apk".
8. Ekstrak file ZIP untuk mendapatkan APK.

Data Aplikasi

Data resep terdapat di:

"assets/data/resep.json"

Data terdiri dari:

- ID resep.
- Nama masakan.
- Tingkat kesulitan.
- Durasi memasak.
- Daftar bahan.
- Langkah memasak.

Pengembang

Nama: Fadlan Hadrian Pradipta

Kelas: XI RPL 2

Mata Pelajaran: Pemrograman Mobile (Flutter/Dart)
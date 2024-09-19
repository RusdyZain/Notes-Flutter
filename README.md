# Notes Flutter App

[![Flutter](https://img.shields.io/badge/Flutter-Framework-blue)](https://flutter.dev/)
[![Firebase](https://img.shields.io/badge/Firebase-Database-orange)](https://firebase.google.com/)

## Deskripsi Proyek

**Notes Flutter App** adalah aplikasi mobile yang dibuat menggunakan Flutter dan Firebase. Aplikasi ini memungkinkan pengguna untuk membuat, mengedit, dan menghapus catatan (notes) secara online dan menyimpannya langsung di Firebase. Aplikasi ini cocok untuk pengguna yang membutuhkan catatan cepat dan dapat diakses dari mana saja, selama terhubung ke internet.

Proyek ini merupakan aplikasi sederhana namun powerful yang mengintegrasikan Flutter sebagai framework frontend dan Firebase sebagai layanan backend untuk autentikasi pengguna dan penyimpanan data.

## Fitur Utama

- **Manajemen Catatan**: Pengguna dapat membuat, mengedit, dan menghapus catatan.
- **Firebase Authentication**: Pengguna dapat login menggunakan email dan password.
- **Firebase Firestore**: Catatan pengguna disimpan di Firestore Database dan dapat diakses secara real-time.
- **User-friendly UI**: Antarmuka yang sederhana dan intuitif menggunakan desain material Flutter.

## Teknologi yang Digunakan

- **Flutter**: Framework open-source dari Google untuk membuat aplikasi cross-platform (iOS dan Android) menggunakan satu codebase.
- **Firebase Authentication**: Digunakan untuk autentikasi pengguna dengan email dan password.
- **Firebase Firestore**: Database NoSQL dari Firebase yang menyimpan catatan pengguna secara real-time.
- **Provider**: State management yang digunakan untuk mengelola status aplikasi secara efisien.

## Instalasi

Ikuti langkah-langkah berikut untuk menjalankan proyek ini secara lokal:

1. **Clone repository ini**:
   ```bash
   git clone https://github.com/RusdyZain/Notes-Flutter.git
   cd Notes-Flutter
   ```

2. **Instal dependensi yang diperlukan**:
   Pastikan Anda memiliki Flutter SDK terinstal di komputer Anda. Kemudian, jalankan:
   ```bash
   flutter pub get
   ```

3. **Konfigurasi Firebase**:
   - Buat project Firebase di [Firebase Console](https://console.firebase.google.com/).
   - Tambahkan aplikasi Android dan/atau iOS ke project Firebase.
   - Unduh file `google-services.json` (untuk Android) dan `GoogleService-Info.plist` (untuk iOS), kemudian letakkan di folder yang sesuai dalam proyek Flutter Anda.
   - Pastikan Firebase Firestore dan Authentication diaktifkan pada Firebase Console.

4. **Jalankan aplikasi**:
   Jalankan aplikasi di emulator atau perangkat fisik:
   ```bash
   flutter run
   ```

## Struktur Proyek

Berikut adalah struktur direktori utama dari proyek ini:
```
.
├── android/             # Konfigurasi untuk platform Android
├── ios/                 # Konfigurasi untuk platform iOS
├── lib/
│   ├── models/          # Model data aplikasi
│   ├── providers/       # State management menggunakan Provider
│   ├── screens/         # Halaman UI aplikasi
│   ├── services/        # Logika backend seperti Firebase
│   ├── widgets/         # Widget custom yang digunakan di aplikasi
│   └── main.dart        # Entry point aplikasi
├── pubspec.yaml         # File konfigurasi Flutter dan dependensi
└── ...
```

## Fitur Keamanan

- **Firebase Authentication**: Hanya pengguna yang terdaftar dapat mengakses dan membuat catatan.
- **Cloud Firestore Security Rules**: Hanya pengguna yang diautentikasi dapat mengakses dan memodifikasi catatan mereka sendiri.

## Roadmap Pengembangan

- [x] Implementasi Firebase Authentication
- [x] Penyimpanan catatan menggunakan Firebase Firestore
- [ ] Menambahkan fitur kategori untuk catatan
- [ ] Menambahkan mode offline menggunakan `Hive` atau `SharedPreferences`
- [ ] Menambahkan dukungan notifikasi

## Kontribusi

Jika Anda ingin berkontribusi dalam pengembangan Notes Flutter App, ikuti langkah berikut:

1. Fork repository ini.
2. Buat branch baru untuk fitur atau perbaikan Anda (`git checkout -b fitur-anda`).
3. Commit perubahan Anda (`git commit -m 'Tambah fitur baru'`).
4. Push ke branch Anda (`git push origin fitur-anda`).
5. Ajukan pull request.

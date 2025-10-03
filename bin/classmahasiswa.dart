class Mahasiswa {
  // Properties (atribut)
  String nama;
  String nim;
  String jurusan;
  String alamat;
  int angkatan;
  // Constructor
  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.alamat,
    required this.angkatan,
  });
  // Method
  void tampilkanData() {
    print("Nama : $nama");
    print("NIM : $nim");
    print("Jurusan : $jurusan");
    print("Alamat : $alamat");
    print("Angkatan : $angkatan");
  }
}

// ...existing code...

class AsistenDosen extends Mahasiswa {
  String mataKuliah;

  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required String alamat,
    required int angkatan,
    required this.mataKuliah,
  }) : super(
         nama: nama,
         nim: nim,
         jurusan: jurusan,
         alamat: alamat,
         angkatan: angkatan,
       );

  // Override method
  @override
  void tampilkanData() {
    super.tampilkanData();
    print("Asisten MK: $mataKuliah");
  }
}

// Interface for pendaftaran (registration)
abstract class Pendaftaran {
  void daftarMatkul(String matkul);
}

class MahasiswaAktif extends Mahasiswa implements Pendaftaran {
  List<String> matkulDiambil = [];
  MahasiswaAktif({
    required String nama,
    required String nim,
    required String jurusan,
    required String alamat,
    required int angkatan,
  }) : super(
         nama: nama,
         nim: nim,
         jurusan: jurusan,
         alamat: alamat,
         angkatan: angkatan,
       );

  @override
  void daftarMatkul(String matkul) {
    matkulDiambil.add(matkul);
    print("$nama berhasil daftar mata kuliah $matkul");
  }
}

void main() {
  // Buat object mahasiswa biasa
  var mhs1 = Mahasiswa(
    nama: "Muhamad Damar Bagas",
    nim: "1123150107",
    jurusan: "Teknik Informatika",
    angkatan: 2023,
    alamat: "Jl. Sukabakti No.23",
  );
  mhs1.tampilkanData();
  print("----------");
  // Buat object asisten dosen
  var asdos = AsistenDosen(
    nama: "Ketut Gunawan",
    nim: "1224536789",
    jurusan: "Tenik Informatika",
    angkatan: 2023,
    alamat: "Jl. Sukabakti No.23",
    mataKuliah: "Pemrograman Mobile",
  );
  asdos.tampilkanData();
  print("----------");
  // Mahasiswa aktif implementasi interface
  var mhs2 = MahasiswaAktif(
    nama: "Muhamad Damar Bagas",
    nim: "1123150107",
    jurusan: "Teknik Informatika",
    angkatan: 2023,
    alamat: "Jl. Sukabkati No.23",
  );
  mhs2.daftarMatkul("Algoritma");
  mhs2.daftarMatkul("Basis Data");
  mhs2.tampilkanData();
  print("Matkul yang diambil: ${mhs2.matkulDiambil}");
}

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

void main(List<String> args) {
  // Contoh penggunaan kelas Mahasiswa
  final mhs = Mahasiswa(
    nama: 'Muhamad Damar Bagas',
    nim: '1123150107',
    jurusan: 'Informatika',
    angkatan: 2023,
    alamat: 'JL.Sukabakti No.23',
  );

  mhs.tampilkanData();
}
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
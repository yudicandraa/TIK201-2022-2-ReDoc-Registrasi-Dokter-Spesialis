class DokterModel {
  String? dokter;
  String? nama;
  List? jadwal;

  DokterModel({this.dokter, this.nama, this.jadwal});

  factory DokterModel.fromMap(map) {
    return DokterModel(
        dokter: map['dokter'], nama: map['nama'], jadwal: map['jadwal']);
  }

  Map<String, dynamic> toMap() {
    return {
      'dokter': dokter,
      'nama': nama,
      'jadwal': jadwal,
    };
  }
}

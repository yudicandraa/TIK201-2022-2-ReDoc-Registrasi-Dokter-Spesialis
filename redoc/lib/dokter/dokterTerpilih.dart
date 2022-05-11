import 'package:cloud_firestore/cloud_firestore.dart';

class DokterTerpilih {
  int? antrian;
  Map? dokter;
  Map? pasien;

  DokterTerpilih({this.antrian, this.dokter, this.pasien});

  factory DokterTerpilih.fromMap(map) {
    return DokterTerpilih(
        antrian: map['antrian'], dokter: map['dokter'], pasien: map['pasien']);
  }

  Map<String, dynamic> toMap() {
    return {
      'antrian': antrian,
      'dokter': dokter,
      'pasien': pasien,
    };
  }
}

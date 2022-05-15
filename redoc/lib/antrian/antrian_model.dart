class Antrian {
  List? jadwal;
  String? namadokter;
  String? namapasien;
  String? nomorantrian;

  Antrian({this.jadwal, this.namadokter, this.namapasien, this.nomorantrian});

  factory Antrian.fromMap(map) {
    return Antrian(
        jadwal: map['jadwal'],
        namadokter: map['namadokter'],
        namapasien: map['namapasien'],
        nomorantrian: map['nomorantrian']);
  }

  Map<String, dynamic> toMap() {
    return {
      'jadwal': jadwal,
      'namadokter': namadokter,
      'namapasien': namapasien,
      'nomorantrian': nomorantrian
    };
  }
}

class RekamMedisModel {
  String? dataRM;
  String? nama;
  String? noRM;

  RekamMedisModel({this.dataRM, this.nama, this.noRM});

  factory RekamMedisModel.fromMap(map) {
    return RekamMedisModel(
        dataRM: map['dataRM'], nama: map['nama'], noRM: map['noRM']);
  }

  Map<String, dynamic> toMap() {
    return {
      'dataRM': dataRM,
      'nama': nama,
      'noRM': noRM,
    };
  }
}

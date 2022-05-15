<<<<<<< HEAD
class UserModel {
  String? uid;
  String? namaLengkap;
  String? email;
  String? noHp;
  String? rekamMedis;
  String? dataRM;

  UserModel(
      {this.uid,
      this.email,
      this.namaLengkap,
      this.noHp,
      this.rekamMedis,
      this.dataRM});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      namaLengkap: map['namaLengkap'],
      noHp: map['noHp'],
      rekamMedis: map['rekamMedis'],
      dataRM: map['dataRM'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namaLengkap': namaLengkap,
      'noHp': noHp,
      'rekamMedis': rekamMedis,
      'dataRM': dataRM,
    };
  }
}
=======
class UserModel {
  String? uid;
  String? namaLengkap;
  String? email;
  String? noHp;
  String? rekamMedis;
  String? dataRM;

  UserModel(
      {this.uid,
      this.email,
      this.namaLengkap,
      this.noHp,
      this.rekamMedis,
      this.dataRM});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      namaLengkap: map['namaLengkap'],
      noHp: map['noHp'],
      rekamMedis: map['rekamMedis'],
      dataRM: map['dataRM'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namaLengkap': namaLengkap,
      'noHp': noHp,
      'rekamMedis': rekamMedis,
      'dataRM': dataRM,
    };
  }
}
>>>>>>> 1904111010056

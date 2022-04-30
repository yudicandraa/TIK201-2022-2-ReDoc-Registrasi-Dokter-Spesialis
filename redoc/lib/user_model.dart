class UserModel {
  String? uid;
  String? namaLengkap;
  String? email;
  String? noHp;
  String? rekamMedis;
<<<<<<< Updated upstream

  UserModel(
      {this.uid, this.email, this.namaLengkap, this.noHp, this.rekamMedis});
=======
  String? dataRM;

  UserModel(
      {this.uid,
      this.email,
      this.namaLengkap,
      this.noHp,
      this.rekamMedis,
      this.dataRM});
>>>>>>> Stashed changes

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      namaLengkap: map['namaLengkap'],
      noHp: map['noHp'],
      rekamMedis: map['rekamMedis'],
<<<<<<< Updated upstream
=======
      dataRM: map['dataRM'],
>>>>>>> Stashed changes
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namaLengkap': namaLengkap,
      'noHp': noHp,
      'rekamMedis': rekamMedis,
<<<<<<< Updated upstream
=======
      'dataRM': dataRM,
>>>>>>> Stashed changes
    };
  }
}

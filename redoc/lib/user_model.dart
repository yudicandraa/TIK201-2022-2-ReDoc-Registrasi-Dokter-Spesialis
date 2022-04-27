class UserModel {
  String? uid;
  String? namaLengkap;
  String? email;
  String? noHp;
  String? rekamMedis;

  UserModel(
      {this.uid, this.email, this.namaLengkap, this.noHp, this.rekamMedis});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      namaLengkap: map['namaLengkap'],
      noHp: map['noHp'],
      rekamMedis: map['rekamMedis'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namaLengkap': namaLengkap,
      'noHp': noHp,
      'rekamMedis': rekamMedis,
    };
  }
}

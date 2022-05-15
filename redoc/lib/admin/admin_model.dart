class AdminModel {
  String? uid;
  String? namaLengkap;
  String? email;
  String? noHp;
  String? noPetugas;

  AdminModel(
      {this.uid, this.email, this.namaLengkap, this.noHp, this.noPetugas});

  factory AdminModel.fromMap(map) {
    return AdminModel(
      uid: map['uid'],
      email: map['email'],
      namaLengkap: map['namaLengkap'],
      noHp: map['noHp'],
      noPetugas: map['noPetugas'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'namaLengkap': namaLengkap,
      'noHp': noHp,
      'noPetugas': noPetugas,
    };
  }
}

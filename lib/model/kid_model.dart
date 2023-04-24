import 'package:cloud_firestore/cloud_firestore.dart';

class KidModel {
  late String id;
  late String photoUrl;
  late String name;
  late String isHere;

  KidModel(
      {required this.id,
      required this.photoUrl,
      required this.name,
      required this.isHere});

  KidModel.fromSnapShot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    id = snapshot.id;
    photoUrl = data['photoUrl'];
    name = data['name'];
    isHere = data['isHere'];
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String? name;
  int? age;
  String? id;

  User({this.name, this.age, this.id});

  User.fromDocumentSnapshot({DocumentSnapshot? documentSnapshot}) {
    Map data = documentSnapshot!.data() as Map;
    name = data['name'] ?? '';
    age = data['age'] ?? 0;
    id = documentSnapshot.id;
  }

  User.fromQueryDocumentSnapshot({QueryDocumentSnapshot? queryDocSnapshot}) {
    Map data = queryDocSnapshot!.data() as Map;
    name = data['name'] ?? '';
    age = data['age'] ?? 0;
    id = queryDocSnapshot.id;
  }

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    age = json['age'] as int;
    id = json['id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['id'] = this.id;
    return data;
  }
}

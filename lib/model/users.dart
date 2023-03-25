import 'package:cloud_firestore/cloud_firestore.dart';

class Users {



  final String email;
  final String uid;
  final String Url;
  final String name;

  final String biomatrics;
  final List follower;
  final List followings;

  const Users(


      {required this.name,
      required this.uid,
      required this.Url,
      required this.email,
      required this.biomatrics,

      required this.follower,
      required this.followings});

  static Users fromSnap(DocumentSnapshot snap) {


    var snapshot = snap.data() as Map<String, dynamic>;


    return Users(
      name: snapshot["username"],
      uid: snapshot["uid"],

      email: snapshot["email"],
      Url: snapshot["photoUrl"],
      biomatrics: snapshot["bio"],
      follower: snapshot["follower"],
      followings: snapshot["followings"],
    );
  }

  

  Map<String, dynamic> toJson() => {
        "username": name,

        "uid": uid,
        "email": email,
        "photoUrl": Url,
        "biomatrics": biomatrics,
        "follower": follower,
        "followings": followings,
      };
}

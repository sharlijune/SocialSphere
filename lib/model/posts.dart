import 'package:cloud_firestore/cloud_firestore.dart';





class Posts {




  final String descriptions;
  final String uid;
  final String name;
  final like;
  final String postnumber;
  final DateTime date;
  final String Url;
  final String Image;





  const Posts(


      {required this.descriptions,
      required this.uid,
      required this.name,
      required this.like,
      required this.postnumber,
      required this.date,
      required this.Url,
      required this.Image,


      });

  static Posts fromSnap(DocumentSnapshot snap) {


    var snapshot = snap.data() as Map<String, dynamic>;

    return Posts(


      descriptions: snapshot["descriptions"],
      uid: snapshot["uid"],
      like: snapshot["likes"],
      postnumber: snapshot["postnumber"],
      date: snapshot["date"],
      name: snapshot["name"],
      Url: snapshot['Url'],

      Image: snapshot['Image']
    );


  }

   Map<String, dynamic> toJson() => {

        "descriptions": descriptions,
        "uid": uid,
        "likes": like,
        "name": name,
        "postnumber": postnumber,

        "date": date,
        'Url': Url,
        'Image': Image
        
      };
}

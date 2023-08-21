import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference itemsCollection =
      FirebaseFirestore.instance.collection('eccom');

  Future updateUserData(String title, String category, String description,
      String image, num price, int quantity) async {
    return await itemsCollection.doc(uid).set({
      'title': title,
      'category': category,
      'description': description,
      'image': image,
      price: price, 
      quantity: quantity,
    });
  }
}

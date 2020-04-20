import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  DocumentReference reference;
  String title;
  bool check;
  int id;

  TodoModel({this.reference, this.title = '', this.check = false, this.id});

  factory TodoModel.fromDocument(DocumentSnapshot doc) {
    return TodoModel(
        reference: doc.reference, title: doc['title'], check: doc['check']);
  }
  factory TodoModel.fromJson(Map doc) {
    return TodoModel(
        id: doc['id'], title: doc['title'], check: doc['check']);
  }
}

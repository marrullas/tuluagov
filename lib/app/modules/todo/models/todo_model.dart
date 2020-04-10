import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  DocumentReference reference;
  String title;
  bool check;

  TodoModel({this.reference, this.title = '', this.check = false});

  factory TodoModel.fromDocument(DocumentSnapshot doc) {
    return TodoModel(
        reference: doc.reference, title: doc['title'], check: doc['check']);
  }

  Future save() async {
    int total = (await Firestore.instance.collection('todo').getDocuments())
        .documents
        .length;
    if (reference == null) {
      reference = await Firestore.instance
          .collection('todo')
          .add({'title': title, 'check': check, 'position': total + 1});
    } else {
      reference.setData({'title': title, 'check': check});
    }
  }

  Future delete() {
    return reference.delete();
  }
}

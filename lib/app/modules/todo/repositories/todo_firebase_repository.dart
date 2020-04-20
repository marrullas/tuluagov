import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/todo/models/todo_model.dart';
import 'package:tuluagov/app/modules/todo/repositories/todo_repository_interface.dart';

class TodoFirebaseRepository extends Disposable implements ITodoRepository{

  final Firestore firestore;

  TodoFirebaseRepository(this.firestore);



  @override
  Stream<List<TodoModel>> getTodos() {
   return firestore.collection('todo').orderBy('position').snapshots().map((query){
     return query.documents.map((doc){
       return TodoModel.fromDocument(doc);
     }).toList();
   });
  }

    //dispose will be called automatically
  @override
  void dispose() {}


  @override
  Future save(TodoModel model) async{
    int total = (await Firestore.instance.collection('todo').getDocuments())
        .documents
        .length;
    if (model.reference == null) {
      model.reference = await Firestore.instance
          .collection('todo')
          .add({'title': model.title, 'check': model.check, 'position': total+1});
    } else {
      model.reference.updateData({'title': model.title, 'check': model.check,});
    }
  }

  @override
  Future delete(TodoModel model) {
    return model.reference.delete();
  }


}

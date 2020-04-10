import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/todo/models/todo_model.dart';
import 'package:tuluagov/app/modules/todo/repositories/todo_repository_interface.dart';

class TodoRepository extends Disposable implements ITodoRepository{

  final Firestore firestore;

  TodoRepository(this.firestore);



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
}

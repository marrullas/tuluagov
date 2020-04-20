import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:tuluagov/app/modules/todo/documents/todo_documents.dart';
import 'package:tuluagov/app/modules/todo/models/todo_model.dart';
import 'package:tuluagov/app/modules/todo/repositories/todo_repository_interface.dart';

class TodoHasuraRepository extends Disposable implements ITodoRepository {
  final HasuraConnect connect;

  TodoHasuraRepository(this.connect);

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Stream<List<TodoModel>> getTodos() {
    return connect.subscription(todosQuery).map((event) {
      return (event['data']['todos'] as List).map((json) {
        return TodoModel.fromJson(json);
      }).toList();
    });
  }

  @override
  Future save(TodoModel model) async {
    if (model.id == null) {
      var data = await connect
          .mutation(todosInsertQuery, variables: {'title': model.title});
      model.id = data['data']['insert_todos']['returning'][0]['id'];
    } else {
      connect.mutation(todosUpdateQuery, variables: {
        'id': model.id,
        'title': model.title,
        'check': model.check,
      });
    }
  }

  @override
  Future delete(TodoModel model) {
    return connect.mutation(todosDeleteQuery, variables: {'id': model.id});
  }
}

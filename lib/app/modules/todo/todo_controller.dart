import 'package:mobx/mobx.dart';
import 'package:tuluagov/app/modules/todo/models/todo_model.dart';
import 'package:tuluagov/app/modules/todo/repositories/todo_repository_interface.dart';

part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  final ITodoRepository repository;

  @observable
  ObservableStream<List<TodoModel>> todoList;

  _TodoControllerBase(ITodoRepository this.repository){
    getList();
  }

  @action
  getList(){
    todoList = repository.getTodos().asObservable();
  }

}

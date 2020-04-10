import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tuluagov/app/modules/todo/repositories/todo_repository.dart';
import 'package:tuluagov/app/modules/todo/repositories/todo_repository_interface.dart';
import 'package:tuluagov/app/modules/todo/todo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/todo/todo_page.dart';

class TodoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<ITodoRepository>((i) => TodoRepository(Firestore.instance)),
        Bind((i) => TodoController(i.get())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TodoPage()),
      ];

  static Inject get to => Inject<TodoModule>.of();
}

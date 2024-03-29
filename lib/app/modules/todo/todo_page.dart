
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tuluagov/app/modules/todo/models/todo_model.dart';

import 'todo_controller.dart';

class TodoPage extends StatefulWidget {
  final String title;
  const TodoPage({Key key, this.title = "Todo"}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends ModularState<TodoPage, TodoController> {
  //use 'controller' variable to access controller
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (_) {
        if (controller.todoList.hasError) {
          print(controller.todoList.error);
          return Center(
              child: RaisedButton(
                  onPressed: controller.getList, child: Text('Error')));
        }
        if (controller.todoList.data == null) {
          return Center(child: CircularProgressIndicator());
        }
        List<TodoModel> list = controller.todoList.data;
        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              TodoModel model = list[index];
              return ListTile(
                title: Text(model.title),
                onLongPress: () {
                  _showDialog(model);
                },
                leading: IconButton(
                    icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                    onPressed: () {
                      controller.delete(model);
                    }),
                trailing: Checkbox(
                  value: model.check,
                  onChanged: (check) {
                    model.check = check;
                    controller.save(model);
                  },
                ),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  _showDialog([TodoModel model]) {
    model ??= TodoModel();
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(model.title.isEmpty ? 'Agregar tarea' : 'Editar tarea'),
            content: TextFormField(
              initialValue: model.title,
              onChanged: (value) => model.title = value,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Escribir'),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Modular.to.pop();
                  },
                  child: Text('Cancelar')),
              FlatButton(
                  onPressed: () async {
                    await controller.save(model);
                    Modular.to.pop();
                  },
                  child: Text('Agregar'))
            ],
          );
        });
  }
}

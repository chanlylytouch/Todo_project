import 'package:flutter/material.dart';
import 'package:todolist_project/Todo.dart';

class NewDialog extends StatelessWidget {
  final controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text('New todo'),
      content: TextField(
        autofocus: true,
        controller: controller,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Add New'),
          onPressed: () {
            final todo = new Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo);
          },
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

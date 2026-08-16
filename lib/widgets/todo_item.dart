import 'package:flutter/material.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function onclick;
  final Function onDelete;
  
  const TodoItem({
    Key? key,
    required this.todo,
    required this.onclick,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 2, 40, 71),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Placeholder(fallbackHeight: 60), // Remove this Placeholder
      /*
      TODO 1: Replace the Placeholder above with a ListTile.
      
      - onTap: Call the onclick() function passed into this widget.
      - leading: Use a ternary operator to show Icons.check_box if todo.isDone is true, 
                 otherwise show Icons.check_box_outline_blank.
      - title: Display the todo.title text. Add a line-through decoration if it is done.
      - trailing: Add an IconButton with a delete icon. Its onPressed should call onDelete().
      */
    );
  }
}
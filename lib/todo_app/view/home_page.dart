import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class TodoItem {
  String title;
  bool isCompleted;

  TodoItem({required this.title, required this.isCompleted});
}

class TodoListScreen extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
      builder: (context, provider, child) {
        final todos = provider.todos;
        return Scaffold(
          appBar: AppBar(
            actions: [
              Switch(
                  activeColor: Colors.white,
                  value: provider.isRedTheme,
                  onChanged: (value) {
                    provider.changeTheme(value);
                  })
            ],
            title: const Text('To Do '),
          ),
          body: Column(children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: Center(
                    child: Text(
                      '${provider.todos.length} task',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white,
                    ),
                    child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Checkbox(
                            value: todos[index].isCompleted,
                            onChanged: (_) {
                              Provider.of<TodoProvider>(context, listen: false)
                                  .toggleTodoCompletion(index);
                            },
                          ),
                          title: Text(
                            todos[index].title,
                            style: TextStyle(
                              decoration:
                                  todos[index].isCompleted ? TextDecoration.lineThrough : null,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              Provider.of<TodoProvider>(context, listen: false)
                                  .removeTodoAtIndex(index);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ))
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        labelText: 'Add your task',
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Provider.of<TodoProvider>(context, listen: false)
                              .addTodo(_textEditingController.text);
                          _textEditingController.clear();
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}

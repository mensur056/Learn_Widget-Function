import 'package:flutter/material.dart';

class ToDoAddItemView extends StatefulWidget {
  const ToDoAddItemView({super.key});

  @override
  State<ToDoAddItemView> createState() => _ToDoAddItemViewState();
}

class _ToDoAddItemViewState extends State<ToDoAddItemView> {
  TextEditingController userInputController = TextEditingController();
  List<String>? items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: TextField(controller: userInputController),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          items?.add(userInputController.text);
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text('add'))
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items?.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.green.shade300,
            child: ListTile(
              leading: Text(items?[index] ?? ''),
              trailing: Checkbox(onChanged: (value) {}, value: true),
            ),
          );
        },
      ),
    );
  }
}

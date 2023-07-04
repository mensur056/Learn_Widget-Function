import 'package:flutter/material.dart';

class ToDoHomePage extends StatefulWidget {
  const ToDoHomePage({super.key});

  @override
  State<ToDoHomePage> createState() => _ToDoHomePageState();
}

class _ToDoHomePageState extends State<ToDoHomePage> {
  final TextEditingController controller = TextEditingController();
  List<UserData> items = [
    UserData('Hello', false),
    UserData('Welcome', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: TextField(controller: controller),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          items.add(UserData(controller.text, false));
                        });
                        controller.text = '';
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'))
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Checkbox(
                        value: items[index].isSelected,
                        onChanged: (value) {
                          setState(() {
                            items[index].isSelected = !items[index].isSelected;
                          });
                        },
                      ),
                      title: Text(items[index].title),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete)),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UserData {
  String title;
  bool isSelected;

  UserData(this.title, this.isSelected);
}

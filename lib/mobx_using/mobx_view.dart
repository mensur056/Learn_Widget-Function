import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:widget_function/mobx_using/viewmodel/mobx_view_model.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  final viewmodel = TaskManagerViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Observer(builder: (_) {
            return Checkbox(
                value: viewmodel.isDarkTheme,
                onChanged: (value) {
                  viewmodel.changeThemeData(value ?? false);
                });
          })
        ],
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
              onPressed: () {
                viewmodel.incrementCounter();
              },
              child: const Icon(Icons.add)),
          FloatingActionButton(
              onPressed: () {
                viewmodel.decrementCounter();
              },
              child: const Icon(Icons.remove)),
        ],
      ),
      body: Center(child: Observer(builder: (_) => Text(viewmodel.counter.toString()))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view/home_page.dart';

class TodoProvider extends ChangeNotifier {
  List<TodoItem> todos = [];

  bool isRedTheme = false;
  SharedPreferences? _preferences;

  TodoProvider() {
    loadTodos();
  }

  Future<void> changeTheme(bool value) async {
    isRedTheme = value;
    await _preferences?.setBool('theme', isRedTheme);
    notifyListeners();
  }

  Future<void> loadTodos() async {
    _preferences = await SharedPreferences.getInstance();
    final todoList = _preferences!.getStringList('todos') ?? [];
    isRedTheme = _preferences?.getBool('theme') ?? false;
    todos = todoList.map((todo) => TodoItem(title: todo, isCompleted: false)).toList();
    notifyListeners();
  }

  Future<void> saveTodos() async {
    final todoList = todos.map((todo) => todo.title).toList();
    await _preferences!.setStringList('todos', todoList);
  }

  void addTodo(String todo) {
    final newTodo = TodoItem(title: todo, isCompleted: false);
    todos.add(newTodo);
    saveTodos();
    notifyListeners();
  }

  void toggleTodoCompletion(int index) {
    todos[index].isCompleted = !todos[index].isCompleted;
    saveTodos();
    notifyListeners();
  }

  void removeTodoAtIndex(int index) {
    todos.removeAt(index);
    saveTodos();
    notifyListeners();
  }
}

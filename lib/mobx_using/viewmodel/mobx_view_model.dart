import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'mobx_view_model.g.dart';

class TaskManagerViewModel = _TaskManagerViewModelBase with _$TaskManagerViewModel;

abstract class _TaskManagerViewModelBase with Store {
  @observable
  bool isDarkTheme = false;
  @computed
  ThemeData get currentThemeData => isDarkTheme ? ThemeData.dark() : ThemeData.light();
  @action
  void changeThemeData(bool value) {
    isDarkTheme = value;
  }

  @observable
  int counter = 1;

  @action
  void incrementCounter() {
    counter = counter + 1;
  }

  @action
  void decrementCounter() {
    counter = counter - 1;
  }
}

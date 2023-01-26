// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskManagerViewModel on _TaskManagerViewModelBase, Store {
  Computed<ThemeData>? _$currentThemeDataComputed;

  @override
  ThemeData get currentThemeData => (_$currentThemeDataComputed ??=
          Computed<ThemeData>(() => super.currentThemeData,
              name: '_TaskManagerViewModelBase.currentThemeData'))
      .value;

  late final _$isDarkThemeAtom =
      Atom(name: '_TaskManagerViewModelBase.isDarkTheme', context: context);

  @override
  bool get isDarkTheme {
    _$isDarkThemeAtom.reportRead();
    return super.isDarkTheme;
  }

  @override
  set isDarkTheme(bool value) {
    _$isDarkThemeAtom.reportWrite(value, super.isDarkTheme, () {
      super.isDarkTheme = value;
    });
  }

  late final _$counterAtom =
      Atom(name: '_TaskManagerViewModelBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_TaskManagerViewModelBaseActionController =
      ActionController(name: '_TaskManagerViewModelBase', context: context);

  @override
  void changeThemeData(bool value) {
    final _$actionInfo = _$_TaskManagerViewModelBaseActionController
        .startAction(name: '_TaskManagerViewModelBase.changeThemeData');
    try {
      return super.changeThemeData(value);
    } finally {
      _$_TaskManagerViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementCounter() {
    final _$actionInfo = _$_TaskManagerViewModelBaseActionController
        .startAction(name: '_TaskManagerViewModelBase.incrementCounter');
    try {
      return super.incrementCounter();
    } finally {
      _$_TaskManagerViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementCounter() {
    final _$actionInfo = _$_TaskManagerViewModelBaseActionController
        .startAction(name: '_TaskManagerViewModelBase.decrementCounter');
    try {
      return super.decrementCounter();
    } finally {
      _$_TaskManagerViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkTheme: ${isDarkTheme},
counter: ${counter},
currentThemeData: ${currentThemeData}
    ''';
  }
}

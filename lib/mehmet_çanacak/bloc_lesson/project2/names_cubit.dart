import 'dart:math' as math show Random;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_project2.dart';

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(math.Random().nextInt(length));
}

class NameCubit extends Cubit<String?> {
  NameCubit() : super(null);

  void getRandomName() {
    emit(userList.getRandomElement());
  }
}

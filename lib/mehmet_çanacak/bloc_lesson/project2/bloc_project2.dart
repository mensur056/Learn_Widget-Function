import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math show Random;

class BlocProject2Page extends StatefulWidget {
  const BlocProject2Page({super.key});

  @override
  State<BlocProject2Page> createState() => _BlocProject2PageState();
}

class _BlocProject2PageState extends State<BlocProject2Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

const Iterable<String> userList = [
  'Mansur',
  "ALi",
  "Tahir",
  "Veli",
  'Akif',
  "mehmet",
  "elekber",
];

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(math.Random().nextInt(length));
}

class NameCubit extends Cubit<String?> {
  NameCubit() : super(null);

  void getRandomName() {
    emit(state);
  }
}

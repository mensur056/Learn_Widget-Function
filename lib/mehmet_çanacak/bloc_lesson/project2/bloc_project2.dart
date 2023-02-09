import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/bloc_lesson/project2/names_cubit.dart';

class BlocProject2Page extends StatefulWidget {
  const BlocProject2Page({super.key});

  @override
  State<BlocProject2Page> createState() => _BlocProject2PageState();
}

class _BlocProject2PageState extends State<BlocProject2Page> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NameCubit>(
      create: (context) => NameCubit(),
      child: const Project2View(),
    );
  }
}

class Project2View extends StatelessWidget {
  const Project2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NameCubit, String?>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state ?? 'Test'),
                ElevatedButton(
                    onPressed: () {
                      context.read<NameCubit>().getRandomName();
                    },
                    child: const Text('Fetch User'))
              ],
            ),
          );
        },
      ),
    );
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

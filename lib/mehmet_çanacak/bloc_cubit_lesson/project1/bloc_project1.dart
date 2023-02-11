import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class BlocProject1Page extends StatefulWidget {
  const BlocProject1Page({super.key});

  @override
  State<BlocProject1Page> createState() => _BlocProject1PageState();
}

class _BlocProject1PageState extends State<BlocProject1Page> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const Project1View(),
    );
  }
}

class Project1View extends StatelessWidget {
  const Project1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      appBar: AppBar(),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
            ),
          );
        },
      ),
    );
  }
}

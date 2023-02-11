import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_function/mehmet_%C3%A7anacak/bloc/core/bloc_cubit.dart';

class BlocHomePage extends StatelessWidget {
  const BlocHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select<HomeCubit, HomeTab>(
      (HomeCubit homeCubit) => homeCubit.state.tab,
    );
    return Scaffold(
      body: IndexedStack(
        index: selectedTab.index,
        children: const [Page1(), Page2(), Page3()],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeTabButton(
              iconData: Icons.next_plan,
              selectedValue: selectedTab,
              value: HomeTab.page1,
            ),
            HomeTabButton(
              iconData: Icons.add,
              selectedValue: selectedTab,
              value: HomeTab.page2,
            ),
            HomeTabButton(
              iconData: Icons.arrow_back_ios_new,
              selectedValue: selectedTab,
              value: HomeTab.page3,
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page3'),
      ),
    );
  }
}

class HomeTabButton extends StatelessWidget {
  const HomeTabButton({
    super.key,
    required this.iconData,
    required this.selectedValue,
    required this.value,
  });
  final IconData iconData;
  final HomeTab selectedValue;
  final HomeTab value;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<HomeCubit>().setTab(value);
      },
      icon: Icon(iconData),
      color: selectedValue != value ? Colors.green : Colors.grey,
    );
  }
}

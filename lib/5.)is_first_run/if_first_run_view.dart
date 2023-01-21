import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IsFirtRunView extends StatefulWidget {
  const IsFirtRunView({super.key});

  @override
  State<IsFirtRunView> createState() => _IsFirtRunViewState();
}

class _IsFirtRunViewState extends State<IsFirtRunView> {
  bool isFirstPage = false;

  @override
  void initState() {
    super.initState();
    checkPage();
  }

  void changeValue(bool value) {
    setState(() {
      isFirstPage = value;
    });
  }

  Future<void> savePage() async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool('firstpage', isFirstPage);
  }

  Future<void> checkPage() async {
    final pref = await SharedPreferences.getInstance();
    changeValue(pref.getBool('firstpage') ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return (isFirstPage) ? secondPage() : firstPage();
  }

  Scaffold firstPage() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          const Placeholder(),
          ElevatedButton(
              onPressed: () {
                savePage();
                isFirstPage = true;
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => secondPage(),
                ));
              },
              child: const Text('Go second page')),
          const SizedBox(height: 24),
        ]),
      ),
    );
  }

  Scaffold secondPage() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const <Widget>[Placeholder()]),
      ),
    );
  }
}

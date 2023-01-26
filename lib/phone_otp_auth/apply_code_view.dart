import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ApplyCodeView extends StatefulWidget {
  const ApplyCodeView({super.key});

  @override
  State<ApplyCodeView> createState() => _ApplyCodeViewState();
}

class _ApplyCodeViewState extends State<ApplyCodeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Please write the code '),
          SizedBox(
            height: 20,
          ),
          Text('if you wanna sing in '),
          SizedBox(
            height: 10,
          ),
          Pinput(length: 6),
        ],
      ),
    );
  }
}

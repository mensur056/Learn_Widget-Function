import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneOTPAuthView extends StatefulWidget {
  const PhoneOTPAuthView({super.key});

  @override
  State<PhoneOTPAuthView> createState() => _PhoneOTPAuthViewState();
}

class _PhoneOTPAuthViewState extends State<PhoneOTPAuthView> {
  TextEditingController numberController = TextEditingController();
  String phone = '';
  @override
  void initState() {
    super.initState();
    numberController.text = '+994';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Phone Number Please'),
            const Text('You have to write your number of phone'),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                phone = value;
              },
              keyboardType: TextInputType.phone,
              controller: numberController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: numberController.text + phone,
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String erificationId, int? forceResendingToken) {},
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                },
                child: const Text('Send the code'))
          ],
        ),
      ),
    );
  }
}

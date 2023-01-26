import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:widget_function/phone_otp_auth/apply_code_view.dart';

//     implementation 'com.google.firebase:firebase-auth' add to build gradle of app
// this project open in android studio for to know SHA1 and SHA256 then to add to firebase project

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
              keyboardType: TextInputType.phone,
              controller: numberController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ApplyCodeView();
                    },
                  ));
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: numberController.text,
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

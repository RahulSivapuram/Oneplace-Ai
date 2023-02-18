import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prac/popup.dart';
import 'package:prac/screens/home_screen.dart';

class Verifycode extends StatefulWidget {
  final String verificationId;
  const Verifycode({Key? key, required this.verificationId}) : super(key: key);
  @override
  State<Verifycode> createState() => _VerifycodeState();
}

class _VerifycodeState extends State<Verifycode> {
  final mnum = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verification")),
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          children: [
            TextFormField(
              controller: mnum,
              decoration: InputDecoration(hintText: "6 digit code"),
            ),
            const SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  loading = true;
                });
                final s = PhoneAuthProvider.credential(
                  verificationId: widget.verificationId,
                  smsCode: mnum.text.toString(),
                );

                try {
                  await _auth.signInWithCredential(s);
                  Get.to(HomeScreen());
                } catch (e) {
                  setState(() {
                    loading = false;
                  });
                  Pop().msg(e.toString());
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text("Verify"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

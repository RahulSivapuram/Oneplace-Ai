import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prac/popup.dart';
import 'package:prac/screens/log_code.dart';

class Logwmob extends StatefulWidget {
  const Logwmob({super.key});

  @override
  State<Logwmob> createState() => _LogwmobState();
}

class _LogwmobState extends State<Logwmob> {
  final mnum = TextEditingController();
  bool loading = false;
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0050AC), Color(0xFF9354B9)],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              TextFormField(
                controller: mnum,
                decoration: InputDecoration(
                  hintText: "Enter your mobile number",
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    loading = true;
                  });
                  _auth.verifyPhoneNumber(
                    phoneNumber: mnum.text,
                    verificationCompleted: (_) {
                      setState(() {
                        loading = false;
                      });
                    },
                    verificationFailed: (e) {
                      setState(() {
                        loading = false;
                      });
                      Pop().msg(e.toString());
                    },
                    codeSent: (String verificationId, int? token) {
                      setState(() {
                        loading = false;
                      });
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Verifycode(
                            verificationId: verificationId,
                          ),
                        ),
                      );
                    },
                    codeAutoRetrievalTimeout: (e) {
                      setState(() {
                        loading = false;
                      });
                      Pop().msg(e.toString());
                    },
                  );
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

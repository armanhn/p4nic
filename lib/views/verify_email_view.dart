import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class _VerifyEmailView extends StatefulWidget {
  const _VerifyEmailView({Key? key}) : super(key: key);

  @override
  State<_VerifyEmailView> createState() => __VerifyEmailViewState();
}

class __VerifyEmailViewState extends State<_VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Please verify your Email Address"),
        TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text("Send Email Verification"))
      ],
    );
  }
}

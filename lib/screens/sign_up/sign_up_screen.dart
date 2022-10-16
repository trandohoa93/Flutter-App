import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpscreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}

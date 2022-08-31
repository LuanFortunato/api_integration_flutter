import 'package:flutter/material.dart';

import 'body_login_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(75, 14, 136, 1),
      body: BodyLoginPage(),
    );
  }
}

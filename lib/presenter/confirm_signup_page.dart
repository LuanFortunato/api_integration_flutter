import 'package:flutter/material.dart';

class ConfirmSignupPage extends StatelessWidget {
  final String email;

  const ConfirmSignupPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Center(
        child: Column(
          children: [
            const Text('Your registration was succesful!'),
            const Icon(Icons.check),
            const Text(
                'Your registration was succesful and we have sent you a confirmation receipt to your email at: '),
            Text(email),
          ],
        ),
      ),
    );
  }
}

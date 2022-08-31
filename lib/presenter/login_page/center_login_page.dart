import 'package:flutter/material.dart';

import '../../shared/widgets/text_field_app.dart';

class CenterBodyLogin extends StatelessWidget {
  const CenterBodyLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Text(
            'or use your email account',
            style: TextStyle(
              color: Colors.blueGrey.shade400,
              fontSize: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextFieldApp(
              hintText: 'Email',
              iconData: Icons.email,
            ),
          ),
          const TextFieldApp(
            hintText: 'Password',
            iconData: Icons.lock_outline,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Forgot your password?',
              style: TextStyle(
                color: Colors.blueGrey.shade400,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

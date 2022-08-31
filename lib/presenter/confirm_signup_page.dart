import 'package:flutter/material.dart';

class ConfirmSignupPage extends StatelessWidget {
  final String email;

  const ConfirmSignupPage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(75, 14, 136, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Column(
            children: [
              const Text(
                'Your registration was succesful!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.check,
                size: 250,
                color: Colors.blue.shade800,
              ),
              Text(
                'Your registration was succesful and we have sent you a confirmation receipt to your email at: ',
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                email,
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.28),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

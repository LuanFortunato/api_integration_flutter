import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:integtatiion_api_flutter/models/user.dart';
import 'package:integtatiion_api_flutter/presenter/confirm_signup_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../login_page/login_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future registerSignup(User user) async {
      Dio dio = Dio();

      String url = 'http://192.168.0.31/api/Usuario';

      await dio.post(url, data: user.toMap());
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(75, 14, 136, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            MdiIcons.linkedin,
                            size: 25,
                            color: Color.fromRGBO(75, 14, 136, 1),
                          ),
                        ),
                      ),
                      IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            MdiIcons.google,
                            size: 25,
                            color: Color.fromRGBO(75, 14, 136, 1),
                          ),
                        ),
                      ),
                      IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            MdiIcons.github,
                            size: 30,
                            color: Color.fromRGBO(75, 14, 136, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'or use your email for registration',
                  style: TextStyle(
                    color: Colors.blueGrey.shade400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.28),
                      ),
                    ),
                    onPressed: () {
                      User user = User(
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      registerSignup(user);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ConfirmSignupPage(
                            email: emailController.text,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'To keep connected with us please login with your personal info',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

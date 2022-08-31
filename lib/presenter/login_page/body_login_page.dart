import 'package:flutter/material.dart';
import 'package:integtatiion_api_flutter/presenter/signup_page/signup_page.dart';

import '../../shared/widgets/large_elevated_button_app.dart';
import '../../shared/widgets/row_icons_login_with.dart';
import '../../shared/widgets/underlined_text_button.dart';
import 'center_login_page.dart';

class BodyLoginPage extends StatelessWidget {
  const BodyLoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            children: [
              const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: RowIconsLoginWith(),
              ),
              const CenterBodyLogin(),
              const LargeElevatedButtonApp(
                text: 'SIGN IN',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Text(
                    'Enter your personal details and start journey with us',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              UnderlinedTextButton(
                text: 'SIGN UP',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

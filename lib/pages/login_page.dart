import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/pages/main_page.dart';
import 'package:wallet_app/pages/register_page.dart';
import 'package:wallet_app/themes/text_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 72),
                  SvgPicture.asset('assets/banner_logo.svg'),
                  const SizedBox(height: 72),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        'Enter your name or e-mail',
                        style: MyTextTheme.small,
                      ),
                    ),
                    style: MyTextTheme.regular,
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        'Password',
                        style: MyTextTheme.small,
                      ),
                    ),
                    obscureText: true,
                    style: MyTextTheme.regular,
                  ),
                  const SizedBox(height: 56),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    ),
                    child: const Text("Log in"),
                  ),
                  const SizedBox(height: 56),
                  const Text(
                    "Having trouble logging in?",
                    style: MyTextTheme.small,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    ),
                    child: const Text(
                      "Sign up",
                      style: MyTextTheme.small,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

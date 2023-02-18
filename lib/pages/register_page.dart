import 'package:flutter/material.dart';
import 'package:wallet_app/themes/color_theme.dart';
import 'package:wallet_app/themes/text_theme.dart';

import 'main_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(color: MyColorTheme.black),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.keyboard_backspace_rounded,
            color: MyColorTheme.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(
                      'Enter your full name',
                      style: MyTextTheme.small,
                    ),
                  ),
                  style: MyTextTheme.regular,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(
                      'E-mail address',
                      style: MyTextTheme.small,
                    ),
                  ),
                  style: MyTextTheme.regular,
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(
                      'Confirm password',
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
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

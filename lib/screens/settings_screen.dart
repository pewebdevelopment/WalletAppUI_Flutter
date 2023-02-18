import 'package:flutter/material.dart';
import 'package:wallet_app/themes/color_theme.dart';
import 'package:wallet_app/widgets/setting_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: const [
              Center(
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: MyColorTheme.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              SettingCard(
                name: 'Language',
                icon: Icons.language_outlined,
              ),
              SettingCard(
                name: 'Notifications',
                icon: Icons.notifications_outlined,
              ),
              SettingCard(
                name: 'Supports',
                icon: Icons.support_outlined,
              ),
              SettingCard(
                name: 'About Application',
                icon: Icons.info_outlined,
              ),
              SettingCard(
                name: 'Logout',
                icon: Icons.logout_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

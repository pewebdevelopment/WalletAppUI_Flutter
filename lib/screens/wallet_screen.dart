import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/models/bank.dart';
import 'package:wallet_app/themes/color_theme.dart';
import 'package:wallet_app/themes/text_theme.dart';
import 'package:wallet_app/widgets/banking_card.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 204,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 144,
                    width: double.infinity,
                    color: MyColorTheme.primary,
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Your wallet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 147,
                      width: 147,
                      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/profile_pic.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 140,
                    child: CircleAvatar(
                      backgroundColor: MyColorTheme.primary,
                      child: Icon(Icons.camera_alt_rounded, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal info",
                    style: TextStyle(
                      color: MyColorTheme.black.withOpacity(0.5),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Text(
                      "Name",
                      style: MyTextTheme.regular,
                    ),
                    title: const Text(
                      "John Doe",
                      style: MyTextTheme.bold,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_rounded,
                      color: MyColorTheme.black.withOpacity(0.5),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Text(
                      "E-mail",
                      style: MyTextTheme.regular,
                    ),
                    title: const Text(
                      "example@gmail.com",
                      style: MyTextTheme.bold,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_rounded,
                      color: MyColorTheme.black.withOpacity(0.5),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Text(
                      "Phone",
                      style: MyTextTheme.regular,
                    ),
                    title: const Text(
                      "+1 5723 052 333",
                      style: MyTextTheme.bold,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_rounded,
                      color: MyColorTheme.black.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My banking cards",
                        style: TextStyle(
                          color: MyColorTheme.black.withOpacity(0.5),
                          fontSize: 12,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_rounded,
                          color: MyColorTheme.black.withOpacity(0.5),
                          size: 16,
                        ),
                        label: Text(
                          "Add",
                          style: TextStyle(
                            color: MyColorTheme.black.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: myBankingCard.map((e) => BankingCard(bank: e)).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/themes/color_theme.dart';

class ActiveIcon extends StatelessWidget {
  final String icon;
  final String label;
  const ActiveIcon({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            icon,
            color: MyColorTheme.primary,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: const TextStyle(color: MyColorTheme.primary),
          ),
        ),
      ],
    );
  }
}

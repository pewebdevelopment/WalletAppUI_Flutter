import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/screens/contacts_screen.dart';
import 'package:wallet_app/screens/home_screen.dart';
import 'package:wallet_app/screens/settings_screen.dart';
import 'package:wallet_app/screens/wallet_screen.dart';
import 'package:wallet_app/themes/color_theme.dart';
import 'package:wallet_app/widgets/active_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _buildScreens = [
    const HomeScreen(),
    const ContactScreen(),
    const WalletScreen(),
    const SettingsScreen(),
  ];

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/ic_home.svg'),
      activeIcon: const ActiveIcon(
        icon: 'assets/icons/ic_home.svg',
        label: 'Home',
      ),
      label: 'Home',
      tooltip: 'Home',
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/ic_contacts.svg'),
      activeIcon: const ActiveIcon(
        icon: 'assets/icons/ic_contacts.svg',
        label: 'Contacts',
      ),
      label: 'Contacts',
      tooltip: 'Contacts',
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/ic_wallet.svg'),
      activeIcon: const ActiveIcon(
        icon: 'assets/icons/ic_wallet.svg',
        label: 'Wallet',
      ),
      label: 'Wallet',
      tooltip: 'Wallet',
      backgroundColor: Colors.white,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/ic_settings.svg'),
      activeIcon: const ActiveIcon(
        icon: 'assets/icons/ic_settings.svg',
        label: 'Settings',
      ),
      label: 'Settings',
      tooltip: 'Settings',
      backgroundColor: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _currentIndex,
        elevation: 0,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: MyColorTheme.primary,
      ),
    );
  }
}

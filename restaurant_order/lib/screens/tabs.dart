import 'package:flutter/material.dart';
import 'package:restaurant_order/screens/account.dart';
import 'package:restaurant_order/screens/checkout.dart';
import 'package:restaurant_order/screens/menu.dart';
import 'package:restaurant_order/widgets/user_show.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget selectedContent = const MenuScreen();

    if (_selectedIndex == 1) {
      //_selectedContent = CheckoutScreen();
      selectedContent = const CheckoutScreen();
    } else if (_selectedIndex == 2) {
      selectedContent = const AccountScreen();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Row(
          children: [
            Image.asset(
              'assets/images/shop_logo.png',
              width: 50,
            ),
            const SizedBox(width: 15),
            const Text(
              'Minha Loja',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserInfo(),
            const SizedBox(height: 20),
            selectedContent,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.black,
        selectedLabelStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            const TextStyle(fontSize: 15, color: Colors.black87),
        selectedIconTheme:
            const IconThemeData(size: 25, color: Colors.black, opacity: 1),
        unselectedIconTheme:
            const IconThemeData(size: 20, color: Colors.black, opacity: 0.5),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
              ),
              label: 'Cardápio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel), label: 'Carrinho'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Cadastro'),
        ],
      ),
    );
  }
}

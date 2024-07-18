import 'package:flutter/material.dart';
import 'package:restaurant_order/data/dummy_data.dart';
import 'package:restaurant_order/widgets/menu/menu_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Column(
          children: [
            const Text(
              'Cardápio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: [
                  for (var product in availableProducts)
                    MenuItem(
                      product: product,
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

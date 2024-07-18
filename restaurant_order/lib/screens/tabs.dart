import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:restaurant_order/data/dummy_user.dart';
import 'package:transparent_image/transparent_image.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Container(
          child: const Row(
            children: [
              Icon(
                Icons.menu_book,
              ),
              SizedBox(width: 10),
              Text(
                'Minha Loja',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: const NetworkImage(
                    ('https://www.pngall.com/wp-content/uploads/5/Junk-Food-Hamburger-PNG-Pic.png'),
                  ),
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
                const SizedBox(width: 20),
                if (DummyUser.dummyUser.name.isEmpty)
                  const Text(
                    'Olá visitante',
                    style: TextStyle(color: Colors.white),
                  )
                else
                  Text(
                    'Olá $DummyUser.dummyUser.name',
                    style: TextStyle(color: Colors.white),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return SizedBox(
      width: screenSize.width,
      height: 600,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pedido',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Card(
              elevation: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/fries.png',
                          fit: BoxFit.contain,
                          height: 80,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Batata Frita',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )),
                                const Text('1'),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )),
                                const SizedBox(width: 30),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(right: 20, bottom: 10),
                          child: Text(
                            'R\$ 19,99',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text('Resumo',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total dos produtos:',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Custo entrega:',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('R\$ 19,00'),
                    SizedBox(width: 10),
                    Text('R\$ 5,00')
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: 300,
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text('Total a pagar',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                SizedBox(width: 50),
                Text('R\$ 24,00')
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll(Size.fromWidth(150))),
                      onPressed: () {},
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll(Size.fromWidth(150))),
                      onPressed: () {},
                      child: const Text('Enviar',
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

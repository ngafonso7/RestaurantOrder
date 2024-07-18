import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() {
    return _AccountScreenState();
  }
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;

    return LayoutBuilder(builder: (ctx, constrains) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, keyboardSpace + 16),
          //color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Dados pessoais',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 2),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    label: Text('Nome'), constraints: BoxConstraints()),
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(label: Text('Telefone')),
              ),
              const SizedBox(height: 20),
              const Text('Endereço',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(label: Text('CEP')),
                    ),
                  ),
                  const SizedBox(width: 5),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(label: Text('Rua/Avenida')),
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text('Número'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(label: Text('Complemento')),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(label: Text('Bairro')),
              ),
              const SizedBox(width: 10),
              const TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(label: Text('Cidade')),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Editar',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Salvar',
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
    });
  }
}

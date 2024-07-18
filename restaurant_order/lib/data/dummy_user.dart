import 'package:restaurant_order/model/user.dart';

class DummyUser {
  static User user = User(
    name: 'Natanael Afonso',
    phone: '111111111',
    address: const Address(
      zipCode: '12345-567',
      street: 'Rua numero 1',
      number: '123',
      district: 'Zona',
      city: 'Cidade',
      state: 'Estado Aqui',
    ),
  );

  static User get dummyUser {
    return user;
  }
}

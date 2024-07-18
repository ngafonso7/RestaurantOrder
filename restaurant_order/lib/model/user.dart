import 'package:uuid/uuid.dart';

Uuid uuid = const Uuid();

class User {
  User({
    required this.name,
    required this.phone,
    required this.address,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String phone;
  final Address address;
}

class Address {
  const Address(
      {required this.zipCode,
      required this.street,
      required this.number,
      required this.district,
      required this.city,
      required this.state,
      this.complement});

  final String zipCode;
  final String street;
  final String number;
  final String? complement;
  final String district;
  final String city;
  final String state;

  @override
  String toString() {
    return '$street, n $number${complement != null ? ', $complement' : ''}, $district ,$city, $state';
  }
}

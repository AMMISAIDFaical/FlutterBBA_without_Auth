// ignore_for_file: unnecessary_getters_setters, non_constant_identifier_names

class ClientModel {
  final int id;
  final String name;
  final int age;
  final String email;
  final String password;
  final String gender;
  final String phoneNumber;

  ClientModel(this.id, this.name, this.age, this.email, this.password,
      this.phoneNumber, this.gender);

  ClientModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        age = json['age'],
        password = json['password'],
        phoneNumber = json['phoneNumber'],
        gender = json['gender'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'age': age,
        'password': password,
        'phoneNumber': phoneNumber,
        'gender': gender
      };
}

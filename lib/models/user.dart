// Modelo que representa a un usuario del API de JSONPlaceholder
class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String street;
  final String suite;
  final String city;
  final String company;
  final String catchPhrase;

  // Constructor con todos los campos requeridos
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.street,
    required this.suite,
    required this.city,
    required this.company,
    required this.catchPhrase,
  });

  // Fábrica para crear un objeto User a partir de un mapa (JSON)
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      street: json['address']['street'],
      suite: json['address']['suite'],
      city: json['address']['city'],
      company: json['company']['name'],
      catchPhrase: json['company']['catchPhrase'],
    );
  }
}

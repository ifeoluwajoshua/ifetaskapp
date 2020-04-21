
class User {
  int id;
  String phone;
  String name;
  String email;
  String username;
  

  User(int id, String phone, String name, String username, String email) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.username = username;
    this.phone = phone;

  }

  User.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        username = json['username'],
        phone = json['phone'];

        

  Map toJson() {
    return {'id': id, 'name': name, 'email': email, 'username': username, 'phone': phone};
  }
} 
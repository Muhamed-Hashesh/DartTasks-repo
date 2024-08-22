class UserCardModel {
  String? name;
  String? email;

  UserCardModel({required this.name, required this.email});

  UserCardModel.fromJson(Map json) {
    name = json['name'];
    email = json['email'];
  }
}

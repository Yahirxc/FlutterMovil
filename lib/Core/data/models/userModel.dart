import 'package:bhm_app/Core/domain/entities/user.dart';

class UserModel
{
  final String name;
  final String lastname;
  final String email;
  final String password;
  UserModel({required this.name,required this.lastname,required this.email,required this.password});
  factory UserModel.fromEntity(User user){
   return UserModel(name: user.name, lastname: user.lastname, email: user.email, password: user.password);
     
  }
}
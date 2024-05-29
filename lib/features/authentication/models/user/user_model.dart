

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:halalrestaurants/utils/formatters/formatter.dart';

class UserModel {
  String id;
  String name;
  String phoneNumber;
  String email;
  String password;
  String profilePicture;
  String userName;

  UserModel({required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.userName,
    required this.password,
    required this.profilePicture});

  /// Helper function to format phone number

  String get formattedPhoneNo=>HFormatter.formatPhoneNumber(phoneNumber);


  /// static function to create an empty user model
  static UserModel empty() =>
      UserModel(id: '',
          name: '',
          phoneNumber: '',
          email: '',
          password: '', profilePicture: '',
          userName: '');


  /// Convert Model to Json Structure for storing data in firebase

  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'PhoneNumber': phoneNumber,
      'Email': email,
      'Password': password,
      'ProfilePicture': profilePicture,
      'UserName' : userName
    };
  }

/// Factory method to create a user model from a firebase document snapshot





  factory UserModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data();

      return UserModel(
        id: document.id,
        name: data?['Name'] ?? '',
        userName: data?['UserName'] ?? '',
        email: data?['Email'] ?? '',
        password: data?['Password'] ?? '',
        profilePicture: data?['ProfilePicture'] ?? '',
        phoneNumber: 'PhoneNumber',
      );
    } else {
      return UserModel.empty();
    }
  }


}

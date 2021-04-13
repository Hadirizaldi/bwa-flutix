part of 'extensions.dart';

extension FirebaseUserExtension on User {
  UserDetail convertToUser(
      {String nama , 
      List<String> selectedGenres = const[], 
      String selectedLanguage = "English", 
      int balance = 50000}) => 
    UserDetail (this.uid, this.email, 
      name: nama, 
      balance: balance, 
      selectedGenres: selectedGenres, 
      selectedLanguage: selectedLanguage);
}
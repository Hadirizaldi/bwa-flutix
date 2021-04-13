part of 'extensions.dart';

extension FirebaseUserExtension on User {
  UserDetail convertToUser(
      {String name = "no name", 
      List<String> selectedGenres = const[], 
      String selectedLanguage = "English", 
      int balance = 50000}) => 
    UserDetail (this.uid, this.email, 
      name: name, 
      balance: balance, 
      selectedGenres: selectedGenres, 
      selectedLanguage: selectedLanguage);
}
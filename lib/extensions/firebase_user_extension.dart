part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser(
      {String name = "no name", 
      List<String> selectedGenres = const[], 
      String selectedLanguage = "English", 
      int balance = 50000}) => 
    User(this.id, this.email, 
      name: name, 
      balance: balance, 
      selectedGenres: selectedGenres, 
      selectedLanguage: selectedLanguage);
}
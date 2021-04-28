part of 'models.dart';

class UserDetail extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final List<String> selectedGenres;
  final String selectedLanguage;
  final int balance;

  UserDetail(this.id, this.email, 
      {this.name, 
      this.profilePicture, 
      this.balance, 
      this.selectedGenres, 
      this.selectedLanguage});

  UserDetail copyWith({String name, String profilePicture, int balance }) => 
    UserDetail(this.id, this.email,
      name: name ?? this.name,
      profilePicture: profilePicture ?? this.profilePicture,
      balance: balance ?? this.balance,
      selectedGenres: selectedGenres,
      selectedLanguage: selectedLanguage 
  );
  @override
  String toString() {
    return "[$id] - $name, $email";
  } 


  @override
  List<Object> get props => [
        id, 
        email,
        name,
        profilePicture,
        selectedGenres,
        selectedLanguage,
        balance
        ];
}

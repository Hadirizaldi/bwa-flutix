part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection = FirebaseFirestore.instance.collection("users");

  static updateUser(UserDetail user) async {
    String genres = "";

    for (var genre in user.selectedGenres){
      genres += genre + ((genre != user.selectedGenres.last) ? ',' : '');
    }

    _userCollection.doc(user.id).set({
      'email' : user.email,
      'name' : user.name,
      'balance' : user.balance,
      'selectedGenres' : user.selectedGenres,
      'profilePicture' : user.profilePicture ?? ""

    });

  }
}  
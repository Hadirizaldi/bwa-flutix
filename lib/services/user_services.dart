part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection = FirebaseFirestore.instance.collection("users");

  static updateUser(UserDetail user) async {
    String genres = " ";

    for (var genre in user.selectedGenres){
      genres +=genre + ((genres != user.selectedGenres.last) ? ',' : '');
    }

    _userCollection.doc(user.id).set({
      'email' : user.email,
      'name' : user.name,
      'balance' : user.balance,
      'selectedGenres' : user.selectedGenres,
      'profilePicture' : user.profilePicture ?? ""

    });
  }

  static Future<UserDetail> getUser (String id)async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();
  
    return UserDetail(id, snapshot['email'],
      balance: snapshot['balance'],
      profilePicture: snapshot['profilePicture'],
      selectedGenres: (snapshot['selectedGenres'] as List).map((e) => e.toString()).toList(),
      selectedLanguage: snapshot['selectedlanguage'],
      name: snapshot['name']
       );
  }
}  
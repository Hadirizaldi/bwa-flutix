part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;


  static Future signUp (String email, String password, String name, List<String> selectedGenres, String selectedLaguage) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      UserDetail user = result.user.convertToUser(
          name: name,
          selectedGenres: selectedGenres, 
          selectedLanguage: selectedLaguage);
    }catch(e){}
  }
}
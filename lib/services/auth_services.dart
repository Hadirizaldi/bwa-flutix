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

      await UserServices.updateUser(user);

      return SignInSignUpResult(user: user);
    }catch(e){
      return SignInSignUpResult(message: e.toString().split(',')[1].trim());
    }
      
  }

   static Future <SignInSignUpResult> signIn(String email, String password) async {
    try {
      UserCredential result = await  _auth.     signInWithEmailAndPassword(email: email, password: password);
      
        UserDetail user = await result.user.fromFireStore();

        return SignInSignUpResult(user: user);
      }
    catch(e){
      return SignInSignUpResult(message: e.toString().split(',')[1].trim());
    }
    
  }
  
  static Future<void> signOut() async{
    await _auth.signOut();
  }

  static Stream<User> get userStream => _auth.authStateChanges();
}


class SignInSignUpResult {
  final UserDetail user;
  final String message;

  SignInSignUpResult({this.user, this.message});
}
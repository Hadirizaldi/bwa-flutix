part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    
    if(firebaseUser == null) {
      return SignInPage();
    }
    else {
      return MainPage();
    }
      
    
  }
} 
import 'package:bwa_flutix/services/services.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(child: Text("Sign Up"), onPressed: () async {
            SignInSignUpResult result = await AuthServices.signUp(
                "Hadirizaldi.hr@gmail.com", 
                "123", 
                "Abece", 
                ["Horor","Action","Anime"], 
                "English");

                if (result.user==null){
                  print(result.message);
                }
                else {
                  print(result.user.toString());
                }
            }),
              ElevatedButton(child: Text("Sign In"), onPressed: () async {
            SignInSignUpResult result = await AuthServices.signIn(
                "Hadirizaldi.hr@gmail.com", 
                "123", 
                );

                if (result.user==null){
                  print(result.message);
                }
                else {
                  print(result.user.toString());
                }
            })
          ],
        ),),
      ),
    ); 
      
    
  }
}
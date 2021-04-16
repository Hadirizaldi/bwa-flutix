import 'package:bwa_flutix/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(child: Text("Sign Up"),onPressed: () async {
            SignInSignUpResult result = await AuthServices.signUp(
                "abce@gmail.com", 
                "123", 
                "jenie", 
                ["action", "horror", "Drama"], 
                "Indonesia");

                if (result.user ==  null) {
                  print(result.message);
                }
                else {
                  print(result.user.toString());
                }
            })
          ],),),
      ),
    ); 
  }
}
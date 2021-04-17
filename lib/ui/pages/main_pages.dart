part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Sign Out"),
          onPressed: () {
            AuthServices.signOut();
          }),
      ),
    );
  }
}
part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    context.bloc<ThemeBloc>().add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor2)));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30,),
                SizedBox(height: 70, child: Image.asset("asset/logo.png"),),
                Container(
                  margin: EdgeInsets.only(top: 70, bottom: 40),
                  child: Text("Welcome Back, \nExplorer!", style: blackTextFont.copyWith(fontSize: 20),),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Email adress",
                    hintText: "Email adress",
                  ),
                ),
                SizedBox(height: 16,),
                  TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Password",
                    hintText: "Password",
                  ),
                ),
                SizedBox(height: 6,),
                Row(
                  children: <Widget>[
                    Text("Forgot Password", style: greyTextFont.copyWith(fontSize: 12,fontWeight: FontWeight.w400),),
                    Text("Get now", style: purpleTextFont.copyWith(fontSize: 12),)
                  ]
                ),
                Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(top: 40, bottom: 30),
                    child: FloatingActionButton(
                      child: Icon(Icons.arrow_forward),
                      backgroundColor: mainColor,
                      onPressed: (){}),
                  ),
                ),
                Row(children: <Widget>[
                  Text("Start Fresh Now ?", style: greyTextFont.copyWith(fontWeight: FontWeight.w400),),
                  Text("Sign Up", style: purpleTextFont,),
                ],)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User firebaseUser = Provider.of<User>(context);
    
    if(firebaseUser == null) {
      if(!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }
    else {
      if(!(prevPageEvent is GoToMainPage)){
        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }
      return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
          ? SplashPage() 
          : (pageState is OnInitialPage) 
            ? SignInPage() 
            : (pageState is OnRegistrationPage) 
              ? SignUpPage(pageState.registrationData)
              : MainPage());
  }
} 
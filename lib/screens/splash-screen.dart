
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  PrefManager prefManager = PrefManager();
  List<bool> isCustomised;
  Animation<double> animation;
  AnimationController _controller;
  Animation<double> _animation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: Center(
          child: ScaleTransition(
            scale: _animation,
            alignment: Alignment.center,
            child: new Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              width: 300,
            ),
          )),
    );
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        value: 0.1,
        vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
    //Splash screen delay before passing moving to next screen
    Future.delayed(Duration(seconds: 5), () {
      checkLoginState();
    });
  }

  void checkLoginState() async {
    String launchStatus = await prefManager
        .getFirstTimeLaunch();
    if (launchStatus != "launched"){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>OnboardingScreen()));
    }
    else {
      FirebaseAuth.instance.currentUser().then((value) async {
        if(value!=null){
          await HelperMethods.getCurrentUserInfo();
          goToHome();
        } else{
          goToHome();
        }
      });

    }

  }

  void goToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>Base()),
    );
  }
}

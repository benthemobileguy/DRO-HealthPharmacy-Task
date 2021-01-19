import 'dart:async';
import 'package:DROHealthPharmacy/bloc/default.dart';
import 'package:DROHealthPharmacy/screens/splash-screen.dart';
import 'package:DROHealthPharmacy/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  // Register all the models and services before the app starts

  await DotEnv().load('.env');
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runZoned<Future<Null>>(() async {
      runApp(new MyApp());
    },);
  });
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainBloc>(
      create: (context) => MainBloc(),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: MaterialApp(
          title: 'DRO Health Pharmacy',
          theme: appTheme,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          navigatorObservers: [],
        ),
      ),
    );
  }
}

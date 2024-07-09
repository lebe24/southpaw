import 'package:southpaw/src/core/app_constant.dart';
import 'package:southpaw/src/screen/boarding/get_started.dart';
import 'package:southpaw/src/screen/home/home.dart';
import 'package:southpaw/src/screen/splash/splash.dart';

var appRoutes = {
  AppUtil.home : (context) => const Home(),
  AppUtil.getstarted : (context) => const GetStarted(),
  AppUtil.splash: (_) => const SplashPage()
};
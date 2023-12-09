import 'package:e_book/config/routes/routes_path.dart';
import 'package:e_book/ui/features/authentication/screens/login_screen/login_screen.dart';
import 'package:e_book/ui/features/authentication/screens/register_screen/register_screen.dart';
import 'package:e_book/ui/features/layout/screens/layout_screen.dart';
import 'package:e_book/ui/features/splash_screen/screens/on_boarding_screen.dart';
import 'package:e_book/ui/features/splash_screen/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.splash:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case RoutePath.onBoarding:
      return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
    case RoutePath.login:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case RoutePath.signUp:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    case RoutePath.layout:
      return MaterialPageRoute(builder: (_) => const LayoutScreen());
  }
}

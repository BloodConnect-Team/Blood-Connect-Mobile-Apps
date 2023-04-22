import 'package:bloodconnect/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/splashscreen',
      name: 'splash_screen',
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen();
      },
    ),
    GoRoute(
      path: '/onboarding',
      name: "onboarding",
      builder: (BuildContext context, GoRouterState state) {
        return onBoardingPage();
      },
    ),
  ],
  initialLocation: "/splashscreen",
  debugLogDiagnostics: true,
  routerNeglect: true,
);

import 'package:bloodconnect/pages/login_page.dart';
import 'package:bloodconnect/pages/onboarding_page.dart';
import 'package:bloodconnect/pages/register_page.dart';
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
        path: '/',
        name: "onboarding",
        builder: (BuildContext context, GoRouterState state) {
          return onBoardingPage();
        },
        routes: [
          GoRoute(
            path: 'login',
            name: 'login',
            builder: (BuildContext context, GoRouterState state) {
              return LoginPage();
            },
          ),
          GoRoute(
            path: 'register',
            name: 'register',
            builder: (BuildContext context, GoRouterState state) {
              return RegisterPage();
            },
          ),
        ]),
  ],
  initialLocation: "/;",
  debugLogDiagnostics: true,
  routerNeglect: true,
);

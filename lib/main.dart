import 'package:bloodconnect/common/routes.dart';
import 'package:bloodconnect/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: "BloodConnect",
        theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        routeInformationParser: routes.routeInformationParser,
        routerDelegate: routes.routerDelegate,
        routeInformationProvider: routes.routeInformationProvider,
      ),
    );
  }
}

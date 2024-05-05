import 'package:class_test/screens/grid_view_screen.dart';
import 'package:class_test/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => GridViewScreen(name: "Risesh"),
        // Add other routes for your app screens here
      },
      // home: GridViewScreen(),
    );
  }
}

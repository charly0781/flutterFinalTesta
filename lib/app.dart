import 'package:finaltest/src/screens/loginPage.dart';
import 'package:flutter/material.dart';

// se usa para las rutas proyect

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Proyecto Final',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.cyan,
          hintColor: Colors.cyan,
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return LoginPage();
                case '/login':
                  return LoginPage();
                /*case '/register':
                  return RegisterPage();
                case '/home':
                  return HomePage();*/
                default:
                  return LoginPage();
              }
            }
          );
        },
      );
  }
}

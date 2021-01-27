import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sejuta_relasi/common/navigation.dart';
import 'package:sejuta_relasi/router.dart';
import 'package:sejuta_relasi/ui/welcome_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: child,
          ),
        );
      },
      title: 'SejutaRelasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      initialRoute: WelcomePage.name,
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hacka/firebase_options.dart';
import 'package:hacka/screens/auth_screen.dart';
import 'package:hacka/screens/home_screen.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Portail de collectivites locales',
          theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
          home: const AuthScreen()),
    );
  }
}

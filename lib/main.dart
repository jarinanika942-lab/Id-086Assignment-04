import 'package:flutter/material.dart';
import 'package:project_id086/auth/auth_gate.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
//import 'package:project_id086/screens/home_screen.dart'; 

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ljsrmsvxvysarpkwwazd.supabase.co',
    anonKey: 'sb_publishable_K-WChmn1DbOtfKj4b9jxbA_IcYKxDYU',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
} 

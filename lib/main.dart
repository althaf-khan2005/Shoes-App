import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_project/cart_details.dart';
import 'package:my_project/firebase_options.dart';
import 'package:my_project/widgets.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartDetails(),
      builder: (context,child)=>
        MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
      ),
    );
  }
}
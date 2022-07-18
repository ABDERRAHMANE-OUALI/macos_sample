import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:macos_sample/home.dart';
import 'package:macos_sample/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User?>.value(
          value: FirebaseAuth.instance.authStateChanges(),
          initialData: null,
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignIn());
  }
}

// JE$2XRPM
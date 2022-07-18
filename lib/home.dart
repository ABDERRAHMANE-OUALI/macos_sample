import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user != null) {
      return ProfileScreen(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Got poped")));
                },
                child: const Text("Pop it now")),
          )
        ],
      );
    } else {
      return const SignInScreen(
        providerConfigs: [EmailProviderConfiguration()],
      );
    }
  }
}

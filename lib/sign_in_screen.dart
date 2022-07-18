import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user != null) {
      return const ProfileScreen();
    } else {
      return const SignInScreen(
        providerConfigs: [
          GoogleProviderConfiguration(
              clientId:
                  "504253623584-h3gll6o2rvdb0sr9dl04den621ditt46.apps.googleusercontent.com")
        ],
      );
    }
  }
}

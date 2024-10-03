import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timer_tracker/app/widget/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  Future<void> _signInAnonymously() async {
    final userCredentials = await FirebaseAuth.instance.signInAnonymously();
    print('${userCredentials.user!.uid}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Timer Tracker')),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text('Sign in'),
              SignInButton(
                text: 'Sign in with google',
                color: Colors.white,
                textColor: Colors.black87,
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              SignInButton(
                text: 'Sign in with facebook',
                color: Color(0xFF334D92),
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              SignInButton(
                text: 'Sign in with email',
                color: Colors.teal[700],
                textColor: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Or',
                style: TextStyle(fontSize: 14, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              SignInButton(
                text: 'Sign in with anonymous',
                color: Colors.lime[300],
                textColor: Colors.black87,
                onPressed: _signInAnonymously,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

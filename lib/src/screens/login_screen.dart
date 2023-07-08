import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (!value!.contains('@')) {
          return 'Pleave enter a valid email';
        }
      },
      onSaved: (value) {
        print(value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: '',
      ),
      obscureText: true,
      validator: (value) {
        if (value!.length < 4) {
          return 'Password must be at least 4 characters';
        }
      },
      onSaved: (value) {
        print(value);
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        // formKey.currentState!.reset();
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
        }
      },
      child: const Text('Submit!'),
    );
  }
}

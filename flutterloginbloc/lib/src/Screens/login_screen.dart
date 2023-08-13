import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(children: [
        emailField(),
        passwordField(),
        SizedBox(
          height: 20.0,
        ),
        submitButton(),
      ]),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        labelText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return StreamBuilder(
        stream: bloc.submitValid,
        builder: (context, snapshot) {
          return ElevatedButton(
            child: Text('Login'),
            onPressed: snapshot.hasData ? bloc.submit : null,
          );
        });
  }
}

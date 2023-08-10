import 'dart:async';
import 'validators.dart';

class Bloc with ValidationMixin {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

//getters - Add data to stream (listen)
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //getters - Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

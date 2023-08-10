import 'dart:async';

class Bloc {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

//getters - Add data to stream (listen)
  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passwordController.stream;

  //getters - Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
}

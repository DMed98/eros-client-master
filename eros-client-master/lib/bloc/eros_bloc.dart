import 'dart:async';

import 'package:eros_app/model/User.dart';
import 'package:eros_app/request/UserRequest.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class ErosBloc extends Bloc with FieldValidator {
  final _nameController = BehaviorSubject<String>();
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _emailRegisterController = BehaviorSubject<String>();
  final _passwordRegisterController = BehaviorSubject<String>();

  //Name Controller
  Stream<String> get name => _nameController.stream.transform(validateName);

  //Email Controller
  Stream<String> get email => _emailController.stream.transform(validateEmail);

  //Email Register Controller
  Stream<String> get emailRegister =>
      _emailRegisterController.stream.transform(validateEmail);

  //Password Controller
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //Password Register Controller
  Stream<String> get passwordRegister =>
      _passwordRegisterController.stream.transform(validatePassword);

  //Name Sink
  Function(String) get changeName => _nameController.sink.add;

  //Email Sink
  Function(String) get changeEmail => _emailController.sink.add;

  //Password Sink
  Function(String) get changePassword => _passwordController.sink.add;

  //Email Register Sink
  Function(String) get changeEmailRegister => _emailRegisterController.sink.add;

  //Password Register Sink
  Function(String) get changePasswordRegister =>
      _passwordRegisterController.sink.add;

  //Requests
  final _usersRequest = UserRequest();

  ///
  /// Login API
  ///
  Future<User> logIn(User user, context) =>
      _usersRequest.logIn(context, body: user.loginMap());

  @override
  void dispose() {
    _nameController.close();
    _emailController.close();
    _passwordController.close();
    _emailRegisterController.close();
    _passwordRegisterController.close();
  }
}

class FieldValidator {
  ///
  /// Validate Name
  ///
  final validateName =
      StreamTransformer<String, String>.fromHandlers(handleData: (name, sink) {
    if (name != '*') {
      if (name.length != 0) {
        sink.add(name);
      } else {
        if (name.length == 0) {
          sink.addError('Este campo es requerido');
        }
      }
    }
  });

  ///
  /// Validate Email
  ///
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (email != '*') {
      if (email.length != 0 && regex.hasMatch(email)) {
        sink.add(email);
      } else {
        if (email.length == 0) {
          sink.addError('Este campo es requerido');
        } else {
          sink.addError('Ingrese un email válido');
        }
      }
    }
  });

  ///
  /// Validate Password
  ///
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password != '*') {
      if (password.length != 0) {
        sink.add(password);
      } else {
        if (password.length == 0) {
          sink.addError('Este campo es requerido');
        }
      }
    }
  });
}

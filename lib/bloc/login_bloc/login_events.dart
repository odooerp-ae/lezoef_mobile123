import 'package:equatable/equatable.dart';
abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];}
class LoginStartEvent extends LoginEvent {}
class LoginSubmitted extends LoginEvent {
  final String login;
  final String password;
  final String db;
  LoginSubmitted({
    required this.login,
    required this.password,
    required this.db,
  });
}

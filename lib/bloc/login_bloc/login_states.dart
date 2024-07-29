
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  @override
  List<Object> get props => [];
}
class LoginInitialState extends LoginState {}
class LoginLoadingState extends LoginState {}
class LoginSubmittedState extends LoginState {
}
class LoginsuccessState extends LoginState {}
class LoginErrorState extends LoginState {
  final String? message;
  LoginErrorState({this.message});
}

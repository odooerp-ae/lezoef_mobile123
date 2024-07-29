import 'package:equatable/equatable.dart';

abstract class ChangePassEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangePasswStartEvent extends ChangePassEvent {}

class ChangePassSubmitted extends ChangePassEvent {
  final String email;
  final String password;
  final String confirmpassword;
  ChangePassSubmitted({
    required this.email,
    required this.password,
    required this.confirmpassword,
  });
}
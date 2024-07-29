import 'package:equatable/equatable.dart';
abstract class RegistrationEvent extends Equatable {
  @override
  List<Object> get props => [];
}
class RegistrationStartEvent extends RegistrationEvent {}
class RegistrationSubmitted extends RegistrationEvent {
  final String firstname;
  final String lastname;
  final String login;
  final String password;
  final String confirmpassword;
  final String companyId;
  RegistrationSubmitted({
    required this.firstname,
    required this.lastname,
    required this.login,
    required this.password,
    required this.confirmpassword,
    required this.companyId,
  });

  
}
class RegistrationCodeSubmitted extends RegistrationEvent {
  final String firstname;
  final String lastname;
  final String login;
  final String password;
  final String confirmpassword;
  final String companyId;
  RegistrationCodeSubmitted({
    required this.firstname,
    required this.lastname,
    required this.login,
    required this.password,
    required this.confirmpassword,
    required this.companyId,
  });
}
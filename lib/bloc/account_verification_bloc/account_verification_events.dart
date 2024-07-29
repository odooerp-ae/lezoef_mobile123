import 'package:equatable/equatable.dart';

abstract class AccountVerificationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AccountVerificationStartEvent extends AccountVerificationEvent {}

class AccountVerificationSubmitted extends AccountVerificationEvent {
   final String email;
  final String otp;
  AccountVerificationSubmitted(
      {required this.email,required this.otp, });
}
class AccountVerificationCodeSubmitted extends AccountVerificationEvent {
   final String email;
  final String otp;
  AccountVerificationCodeSubmitted(
      {required this.email,required this.otp, });
}
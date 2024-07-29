import 'package:equatable/equatable.dart';

abstract class ResetVerificationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ResetVerificationStartEvent extends ResetVerificationEvent {}

class ResetVerificationSubmitted extends ResetVerificationEvent {
   final String email;
  final String otp;
  ResetVerificationSubmitted(
      {required this.email,required this.otp, });
}
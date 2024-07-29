import 'package:equatable/equatable.dart';

abstract class ResetEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class RegistrationStartEvent extends ResetEvent {}

class ResendcodeSubmitted extends ResetEvent {
  final String email;
  ResendcodeSubmitted({
    required this.email,
  });
}

class ResetSubmitted extends ResetEvent {
  final String email;
  ResetSubmitted({
    required this.email,
  });
}
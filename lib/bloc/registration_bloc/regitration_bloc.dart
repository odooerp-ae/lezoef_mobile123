
import 'package:equatable/equatable.dart';

class RegistrationState extends Equatable {
  @override
  List<Object> get props => [];
}

class RegistrationInitialState extends RegistrationState {}

class RegistrationLoadingState extends RegistrationState {
  
}

class RegistrationSubmittedState extends RegistrationState {

}

class RegistrationsuccessState extends RegistrationState {}

class ResendsuccessState extends RegistrationState {}

class RegistrationErrorState extends RegistrationState {
  final String? message;
  RegistrationErrorState({this.message});
}

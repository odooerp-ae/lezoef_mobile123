import 'package:equatable/equatable.dart';

class AccountVerificationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AccountVerificationInitialState extends AccountVerificationState {}

class AccountVerificationLoadingState extends AccountVerificationState {}

class AccountVerificationSubmittedState extends AccountVerificationState {
}

class AccountVerificationsuccessState extends AccountVerificationState {}

class AccountVerificationErrorState extends AccountVerificationState {
  final String? message;
  AccountVerificationErrorState({this.message});
}
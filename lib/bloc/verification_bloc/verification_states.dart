import 'package:equatable/equatable.dart';

class ResetVerificationState extends Equatable {
  @override
  List<Object> get props => [];
}

class ResetVerificationInitialState extends ResetVerificationState {}

class ResetVerificationLoadingState extends ResetVerificationState {}

class ResetVerificationSubmittedState extends ResetVerificationState {
}

class ResetVerificationsuccessState extends ResetVerificationState {}

class ResetVerificationErrorState extends ResetVerificationState {
  final String? message;
  ResetVerificationErrorState({this.message});
}
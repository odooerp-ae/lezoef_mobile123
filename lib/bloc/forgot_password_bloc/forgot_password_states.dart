import 'package:equatable/equatable.dart';

class ResetState extends Equatable {
  @override
  List<Object> get props => [];
}

class ResetInitialState extends ResetState {}

class ResetLoadingState extends ResetState {}

class ResetSubmittedState extends ResetState {
}

class ResetsuccessState extends ResetState {}

class ReseResendcodesuccessState extends ResetState {}
class ResetErrorState extends ResetState {
  final String? message;
  ResetErrorState({this.message});
}
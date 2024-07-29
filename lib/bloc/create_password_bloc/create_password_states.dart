import 'package:equatable/equatable.dart';

class ChangePassState extends Equatable {
  @override
  List<Object> get props => [];
}

class ChangePassInitialState extends ChangePassState {}

class ChangePassLoadingState extends ChangePassState {
}

class ChangePassSubmittedState extends ChangePassState {
  ChangePassSubmittedState();
}

class ChangePasssuccessState extends ChangePassState {}

class ChangePassErrorState extends ChangePassState {
  final String? message;
  ChangePassErrorState({this.message});
}
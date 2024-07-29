import 'package:equatable/equatable.dart';
import 'package:lezof_auto_repair_mobile_app/models/list_of_repair_orders_model.dart';


class WalletDetailsState extends Equatable {
  @override
  List<Object> get props => [];
}

class WalletDetalsInitialState extends WalletDetailsState {}
class WalletDetalsLoadingState extends WalletDetailsState {}
class TransactionDetalsSuccessState extends WalletDetailsState {
  final ListOfRepairOrders transactionDetailModel;
  TransactionDetalsSuccessState({
    required this.transactionDetailModel,
  });
}


class WalletDetalsErrorState extends WalletDetailsState {
  final String? message;
  WalletDetalsErrorState({this.message});
}

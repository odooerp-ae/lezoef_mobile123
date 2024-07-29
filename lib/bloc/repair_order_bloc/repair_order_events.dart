import 'package:equatable/equatable.dart';

abstract class WalletDetailsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetWalletDetailsEvent extends WalletDetailsEvent {
}

class GetTransactionDetailsEvent extends WalletDetailsEvent {
    final String? vin;
     GetTransactionDetailsEvent({
    this.vin,
  });

}

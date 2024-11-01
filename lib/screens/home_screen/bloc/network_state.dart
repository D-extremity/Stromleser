part of 'network_bloc.dart';

@immutable
sealed class NetworkState {}

final class NetworkInitial extends NetworkState {}

class NetworkConnectedState extends NetworkState {
  final ConnectivityResult connectivityResult;
  final String wifiName;
  NetworkConnectedState(this.wifiName, {required this.connectivityResult});
}

class NetworkLostState extends NetworkState {}

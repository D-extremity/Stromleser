part of 'network_bloc.dart';

@immutable
sealed class NetworkEvent {}

class NetworkConnectedEvent extends NetworkEvent {
  final ConnectivityResult connectivityResult;

  NetworkConnectedEvent({required this.connectivityResult});
}

class NetworkLostEvent extends NetworkEvent {}

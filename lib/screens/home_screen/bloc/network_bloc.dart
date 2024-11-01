import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';
import 'package:network_info_plus/network_info_plus.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  StreamSubscription? connectionSubscription;
  final Connectivity _connectivity = Connectivity();

  NetworkBloc() : super(NetworkInitial()) {
    connectionSubscription =
        _connectivity.onConnectivityChanged.listen((connection) {
      if (connection.first == ConnectivityResult.wifi) {
        add(NetworkConnectedEvent(connectivityResult: connection.first));
      } else {
        add(NetworkLostEvent());
      }
    });
    on<NetworkConnectedEvent>((event, emit) async {
      final info = NetworkInfo();
      final String? wifiName = await info.getWifiName();
      emit(NetworkConnectedState(
        wifiName ?? "Troubling Fetching Wifi Details",
        connectivityResult: event.connectivityResult,
      ));
    });

    on<NetworkLostEvent>((event, emit) {
      emit(NetworkLostState());
    });
  }

  @override
  Future<void> close() {
    connectionSubscription?.cancel();
    return super.close();
  }
}

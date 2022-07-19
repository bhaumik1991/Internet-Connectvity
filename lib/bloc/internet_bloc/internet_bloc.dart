// import 'package:bloc_example/bloc/internet_bloc/internet_event.dart';
// import 'package:bloc_example/bloc/internet_bloc/internet_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:connectivity/connectivity.dart';
// import 'dart:async';
//
// class InternetBloc extends Bloc<InternetEvent, InternetState>{
//
//   Connectivity _connectivity = Connectivity();
//   StreamSubscription? connectivitySubscription;
//
//   // InternetBloc() to initialize the internetbloc
//   // super() to initialize the Bloc, it will take one argument to initial the state.
//   InternetBloc() : super(InternetInitialState()){
//
//     // To do something when Internet is lost
//     // emit basically do emit the current state
//     on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
//
//     //To do something when internet is back
//     on<InternetGainedEvent>((event, emit) => emit(InterGainedState()));
//
//     connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
//       if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
//         add(InternetGainedEvent());
//       }
//       else{
//         add(InternetLostEvent());
//       }
//     });
//   }
//
//   @override
//   Future<void> close() {
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
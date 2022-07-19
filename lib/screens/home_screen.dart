import 'package:bloc_example/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_example/bloc/internet_bloc/internet_state.dart';
import 'package:bloc_example/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // child: BlocConsumer<InternetBloc, InternetState>(
          //   listener: (context, state) {
          //     if(state is InterGainedState){
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(
          //             content: Text("Internet Connected"),
          //             backgroundColor: Colors.green,
          //         ),
          //       );
          //     }
          //     else if(state is InternetLostState){
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(
          //           content: Text("Internet Not Connected"),
          //           backgroundColor: Colors.red,
          //         ),
          //       );
          //     }
          //   },
          //   builder: (context, state){
          //     if(state is InterGainedState){
          //       return Text("Connected");
          //     }
          //     else if(state is InternetLostState){
          //       return Text("Not Connected");
          //     }
          //     else{
          //       return Text("Loading...");
          //     }
          //   },
          // ),

          child: BlocConsumer<InternetCubit, InternetState>(
            listener: (context, state) {
              if(state == InternetState.Gained){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Internet Connected"),
                    backgroundColor: Colors.green,
                  ),
                );
              }
              else if(state == InternetState.Lost){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Internet Not Connected"),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state){
              if(state == InternetState.Gained){
                return Text("Connected");
              }
              else if(state == InternetState.Lost){
                return Text("Not Connected");
              }
              else{
                return Text("Loading...");
              }
            },
          ),
        ),
      ),
    );
  }
}

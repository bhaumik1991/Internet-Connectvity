import 'package:bloc_example/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_example/cubit/internet_cubit.dart';
import 'package:bloc_example/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => InternetBloc(),
  //     child: MaterialApp(
  //       title: 'Flutter Demo',
  //       debugShowCheckedModeBanner: false,
  //       home: HomeScreen(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}


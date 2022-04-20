import 'package:bloc_counter_with_bloc_package/blocs/counter/counter_bloc.dart';
import 'package:bloc_counter_with_bloc_package/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Counter Cubit",
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage(),
      ),
    );
  }
}

import 'dart:developer';

import 'package:bloc_counter_with_bloc_package/blocs/counter/counter_bloc.dart';
import 'package:bloc_counter_with_bloc_package/next_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("another Counter"),
      ),
      body: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          if (state.counter == 5) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(" counter is ${state.counter}"),
                );
              },
            );
          } else if (state.counter == -2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const NextPage();
                },
              ),
            );
          }
        },
        child: Center(
          child: Text(
            "${context.watch<CounterBloc>().state.counter}",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounterEvent());
              //? Can be done this way too:
              //* BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());
              //? With using BlocProvider
              //* BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

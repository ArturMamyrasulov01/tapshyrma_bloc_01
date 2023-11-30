import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_01/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter App"),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              "$state",
              style: Theme.of(context).textTheme.headline2,
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              key: const Key("counterCubit_increament_fab"),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              key: const Key("counterCubit_decreament_fab"),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

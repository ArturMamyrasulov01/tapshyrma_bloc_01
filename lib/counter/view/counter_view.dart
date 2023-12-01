import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_01/counter/cubit/counter_cubit.dart';

import '../widgets/data_container_widget.dart';
import '../widgets/elevated_button_widget.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Тапшырма 01",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DataContainerWidget(size: size),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtonWidget(
                  size: size,
                  icon: Icons.remove,
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                ),
                SizedBox(width: size.width * 0.1),
                ElevatedButtonWidget(
                  size: size,
                  icon: Icons.add,
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

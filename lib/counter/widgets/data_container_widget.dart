import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class DataContainerWidget extends StatelessWidget {
  const DataContainerWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.07,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // ignore: use_full_hex_values_for_flutter_colors
        color: const Color(0xffbdbdbd0),
      ),
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Text(
            "сан: $state",
            style: const TextStyle(fontSize: 20),
          );
        },
      ),
    );
  }
}

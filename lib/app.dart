import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_01/counter/view/counter_page.dart';

class CounterApp extends MaterialApp {
  const CounterApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const CounterPage(),
        );
}

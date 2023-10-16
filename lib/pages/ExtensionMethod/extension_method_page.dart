import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/bloc/counter.dart';

class ExtensionMethodPage extends StatelessWidget {
  const ExtensionMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extension Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              Counter myCounter = context.watch<Counter>();
              return Text(
                "${myCounter.state}",
                style: const TextStyle(fontSize: 50),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => context.read<Counter>().decrement(),
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () => context.read<Counter>().increment(),
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/bloc/counter.dart';
import 'package:learn_flutter_bloc/bloc/theme.dart';
import 'package:learn_flutter_bloc/pages/BlocProvider/data_widget.dart';

class BlocProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    ThemeBloc myTheme = context.read<ThemeBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Provider"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).pushNamed("/other");
          myTheme.changeTheme();
        },
        // child: const Icon(Icons.arrow_forward),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    myCounter.decrement();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const DataWidget(),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    myCounter.increment();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/bloc/counter.dart';
import 'package:learn_flutter_bloc/bloc/theme.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Center(
      child: MultiBlocListener(
        listeners: [
          BlocListener<ThemeBloc, bool>(
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Dark Mode Active"),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current == false) {
                return true;
              } else {
                return false;
              }
            },
          ),
          BlocListener<Counter, int>(
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Diatas 10"),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            listenWhen: (previous, current) {
              if (current > 10) {
                return true;
              } else {
                return false;
              }
            },
          ),
        ],
        child: BlocBuilder(
          bloc: myCounter,
          builder: (context, state) {
            return Text(
              "$state",
              style: const TextStyle(
                fontSize: 50,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}

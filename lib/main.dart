import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/bloc/counter.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learn_flutter_bloc/bloc/counter.dart';
// import 'package:learn_flutter_bloc/bloc/user.dart';
import 'package:learn_flutter_bloc/bloc/theme.dart';
import 'package:learn_flutter_bloc/pages/ExtensionMethod/extension_method_page.dart';
import 'package:learn_flutter_bloc/routes/routes.dart';
// import 'package:learn_flutter_bloc/pages/BlocProvider/bloc_provider_page.dart';
// import 'package:learn_flutter_bloc/pages/BlocSelector/bloc_selector_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final router = MyRouter();

  final ThemeBloc myTheme = ThemeBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<Counter>(
        create: (context) => Counter(),
        child: const ExtensionMethodPage(),
      ),
    );
    // return MaterialApp(
    //     home: BlocProvider(
    //   create: (context) => UserBloc(),
    //   child: const BlocSelectorPage(),
    // ));

    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => Counter(),
    //     ),
    //     BlocProvider(
    //       create: (context) => myTheme,
    //     ),
    //   ],
    //   child: BlocBuilder<ThemeBloc, bool>(
    //     builder: (context, state) {
    //       return MaterialApp(
    //         theme: state == true ? ThemeData.light() : ThemeData.dark(),
    //         debugShowCheckedModeBanner: false,
    //         // onGenerateRoute: router.onRoute,
    //         home: BlocProviderPage(),
    //       );
    //     },
    //   ),
    // );

    // return BlocProvider(
    //   create: (context) => myTheme,
    //   child: BlocBuilder<ThemeBloc, bool>(
    //     bloc: myTheme,
    //     builder: (context, state) {
    //       return MaterialApp(
    //         theme: state == true ? ThemeData.light() : ThemeData.dark(),
    //         debugShowCheckedModeBanner: false,
    //         // onGenerateRoute: router.onRoute,
    //         home: BlocProviderPage(),
    //       );
    //     },
    //   ),
    // );
  }
}

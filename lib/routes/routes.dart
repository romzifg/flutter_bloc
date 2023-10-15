import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_bloc/bloc/counter.dart';
import 'package:learn_flutter_bloc/pages/BlocProvider/bloc_provider_page.dart';
import 'package:learn_flutter_bloc/pages/NotFound/not_found.dart';
import 'package:learn_flutter_bloc/pages/Other/other.dart';

class MyRouter {
  final Counter myCounter = Counter();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: BlocProviderPage(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: const OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}

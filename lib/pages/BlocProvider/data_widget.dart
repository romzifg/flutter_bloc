import 'package:flutter/material.dart';
import 'package:learn_flutter_bloc/pages/BlocProvider/center_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: 200,
      child: const CenterWidget(),
    );
  }
}

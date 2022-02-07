import 'package:counter_domain/counter_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterContent extends StatelessWidget {
  const CounterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            final String numberText;
            if (state is! CounterLoaded) {
              numberText = 'Loading...';
            } else {
              numberText = state.number.value.toString();
            }
            return Text(
              numberText,
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ],
    );
  }
}

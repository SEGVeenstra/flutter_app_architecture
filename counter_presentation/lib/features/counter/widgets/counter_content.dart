import 'package:counter_presentation/features/counter/cubit/counter_cubit.dart';
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
        BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            final String numberText;
            if (state is! CounterLoaded) {
              numberText = '...';
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

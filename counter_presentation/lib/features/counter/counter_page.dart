import 'package:counter_presentation/features/counter/cubit/counter_cubit.dart';
import 'package:counter_presentation/features/counter/widgets/counter_content.dart';
import 'package:counter_presentation/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(
        sl.get(),
        sl.get(),
      ),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CounterContent(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: context.read<CounterCubit>().increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }),
    );
  }
}

import 'package:counter_domain/counter_domain.dart';
import 'package:counter_presentation/features/counter/widgets/counter_content.dart';
import 'package:counter_presentation/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(sl.get()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CounterContent(),
          ),
          floatingActionButton: BlocSelector<CounterBloc, CounterState, bool>(
            selector: (state) => state is CounterLoaded,
            builder: (context, isLoaded) {
              if (!isLoaded) return const SizedBox.shrink();
              return FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(const CounterIncrement()),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              );
            },
          ),
        );
      }),
    );
  }
}

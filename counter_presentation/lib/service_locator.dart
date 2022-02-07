import 'package:counter_data/counter_data.dart';
import 'package:counter_domain/counter_domain.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // repositories
  sl.registerSingleton<CounterRepository>(CounterRepositoryMemory());
}

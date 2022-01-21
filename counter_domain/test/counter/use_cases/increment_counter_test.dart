import 'package:counter_domain/counter_domain.dart';
import 'package:mockito/mockito.dart';
import 'package:test/scaffolding.dart';

import '../../mocks.mocks.dart';

main() async {
  test('should increment the number', () async {
    // arrange
    final repo = MockCounterRepository();
    when(repo.getNumber())
        .thenAnswer((realInvocation) async => Number(value: 4));
    final useCase = IncrementCounter(repo);

    // act
    await useCase();

    // assert
    verify(repo.storeNumber(Number(value: 5)));
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';
import 'package:tdd_flutte_clean_architecture/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_flutte_clean_architecture/domain/usecases/get_random_number_trivia.dart';

import 'get_random_number_trivia_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  late GetRandomNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  const response =
      NumberTrivia(number: 1, text: "test", found: true, type: "trivia");
  test("should random get trivia for the number from repository ", () async {
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => response);

    final result = await usecase.execute();
    expect(result, response);
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}

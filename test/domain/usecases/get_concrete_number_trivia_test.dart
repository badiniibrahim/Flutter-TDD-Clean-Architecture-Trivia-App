import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';
import 'package:tdd_flutte_clean_architecture/domain/repositories/number_trivia_repository.dart';
import 'package:tdd_flutte_clean_architecture/domain/usecases/get_concrete_number_trivia.dart';

import 'get_concrete_number_trivia_test.mocks.dart';

@GenerateMocks([NumberTriviaRepository])
void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  const number = 1;
  const response =
      NumberTrivia(number: 1, text: "test", found: true, type: "trivia");
  test("should get trivia for the number from repository ", () async {
    when(() => mockNumberTriviaRepository.getConcreteNumberTrivia(number));

    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => response);

    final result = await usecase.call(number);
    expect(result, response);
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(number));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}

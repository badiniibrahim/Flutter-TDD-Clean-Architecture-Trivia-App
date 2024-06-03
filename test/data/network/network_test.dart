import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutte_clean_architecture/data/models/number_trivia_model.dart';
import 'package:tdd_flutte_clean_architecture/data/prividers/network/api_provider.dart';
import 'package:tdd_flutte_clean_architecture/data/repositories/number_trivia_repository_impl.dart';

import 'network_test.mocks.dart';

@GenerateMocks([APIProvider])
void main() {
  late NumberTriviaRepositoryImpl repository;
  late MockAPIProvider mockAPIProvider;

  setUp(() {
    mockAPIProvider = MockAPIProvider();
    repository = NumberTriviaRepositoryImpl(mockAPIProvider);
  });
  group('getConcreteNumberTrivia', () {
    const tNumber = 1;
    const tNumberTriviaModel = NumberTriviaModel(
      number: tNumber,
      text: '1 is the number of Gods in monotheism.',
      found: true,
      type: "trivia",
    );

    test('should perform a GET request on a URL with number', () async {
      // Arrange
      when(mockAPIProvider.request(any)).thenAnswer(
        (_) async => {
          "text": "1 is the number of Gods in monotheism.",
          "number": 1,
          "found": true,
          "type": "trivia"
        },
      );

      final result = await repository.getConcreteNumberTrivia(tNumber);
      expect(result, equals(tNumberTriviaModel));
    });
  });
}

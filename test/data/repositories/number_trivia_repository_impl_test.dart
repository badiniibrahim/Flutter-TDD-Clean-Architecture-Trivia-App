import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_flutte_clean_architecture/data/models/number_trivia_model.dart';
import 'package:tdd_flutte_clean_architecture/data/prividers/network/api_provider.dart';
import 'package:tdd_flutte_clean_architecture/data/repositories/number_trivia_repository_impl.dart';

import 'number_trivia_repository_impl_test.mocks.dart';

@GenerateMocks([APIProvider])
void main() {
  late NumberTriviaRepositoryImpl repository;
  late MockAPIProvider mockAPIProvider;

  setUp(() {
    mockAPIProvider = MockAPIProvider();
    repository = NumberTriviaRepositoryImpl(mockAPIProvider);
  });

  void setUpMockHttpClientSuccess200() {
    when(mockAPIProvider.request(any)).thenAnswer(
      (_) async => {
        "text": "1 is the number of dimensions of a line.",
        "number": 1,
        "found": true,
        "type": "trivia"
      },
    );
  }

  group('getConcreteNumberTrivia', () {
    const tNumber = 1;
    const tNumberTriviaModel = NumberTriviaModel(
      number: tNumber,
      text: '1 is the number of dimensions of a line.',
      found: true,
      type: "trivia",
    );

    test(
        'should perform a GET request on a URL with number and return trivia when the response code is 200',
        () async {
      // Arrange
      setUpMockHttpClientSuccess200();

      // Act
      final result = await repository.getConcreteNumberTrivia(tNumber);

      expect(result, equals(tNumberTriviaModel));
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_flutte_clean_architecture/data/models/number_trivia_model.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';

void main() {
  const numberModel =
      NumberTriviaModel(text: "text", number: 1, found: true, type: 'trivia');

  test('Should be a subclass of NumberTrivia', () {
    expect(numberModel, isA<NumberTrivia>());
  });

  group('toJson', () {
    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = numberModel.toJson();
        // assert
        final expectedMap = {
          "text": "text",
          "number": 1,
        };
        expect(result, expectedMap);
      },
    );
  });
}

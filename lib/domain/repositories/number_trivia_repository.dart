import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<NumberTrivia> getConcreteNumberTrivia(int number);
  Future<NumberTrivia> getRandomNumberTrivia();
}

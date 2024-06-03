import 'package:tdd_flutte_clean_architecture/app/core/usecase/no_param_usecase.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';
import 'package:tdd_flutte_clean_architecture/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends NoParamUseCase<NumberTrivia> {
  final NumberTriviaRepository numberTriviaRepository;
  GetRandomNumberTrivia(this.numberTriviaRepository);

  @override
  Future<NumberTrivia> execute() {
    return numberTriviaRepository.getRandomNumberTrivia();
  }
}

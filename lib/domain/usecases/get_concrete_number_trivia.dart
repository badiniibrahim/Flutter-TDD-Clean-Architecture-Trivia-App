import 'package:tdd_flutte_clean_architecture/app/core/usecase/param_usecase.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';
import 'package:tdd_flutte_clean_architecture/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends ParamUseCase<NumberTrivia, int> {
  final NumberTriviaRepository numberTriviaRepository;
  GetConcreteNumberTrivia(this.numberTriviaRepository);

  @override
  Future<NumberTrivia> call(int param) async {
    return await numberTriviaRepository.getConcreteNumberTrivia(param);
  }
}

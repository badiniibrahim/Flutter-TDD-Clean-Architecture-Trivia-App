import 'package:tdd_flutte_clean_architecture/data/models/number_trivia_model.dart';
import 'package:tdd_flutte_clean_architecture/data/prividers/network/api_provider.dart';
import 'package:tdd_flutte_clean_architecture/data/prividers/network/apis/number_trivia_api.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';
import 'package:tdd_flutte_clean_architecture/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final APIProvider apiProvider;

  NumberTriviaRepositoryImpl(this.apiProvider);
  @override
  Future<NumberTrivia> getConcreteNumberTrivia(int number) async {
    final response = await NumberTriviaAPI.fetchNumberTrivia(number).request();
    return NumberTriviaModel.fromJson(response);
  }

  @override
  Future<NumberTrivia> getRandomNumberTrivia() {
    throw UnimplementedError();
  }
}

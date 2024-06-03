import 'package:tdd_flutte_clean_architecture/data/prividers/network/api_endpoint.dart';
import 'package:tdd_flutte_clean_architecture/data/prividers/network/api_provider.dart';
import 'package:tdd_flutte_clean_architecture/data/prividers/network/api_request_representable.dart';

enum NumberType { fetchNumberTrivia }

class NumberTriviaAPI implements APIRequestRepresentable {
  final NumberType type;
  int? number;

  NumberTriviaAPI._({
    required this.type,
    this.number,
  });

  NumberTriviaAPI.fetchNumberTrivia(int number)
      : this._(
          type: NumberType.fetchNumberTrivia,
          number: number,
        );

  @override
  get body => null;

  @override
  String get endpoint => APIEndpoint.trivia;

  @override
  Map<String, String>? get headers => null;

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  String get path {
    switch (type) {
      case NumberType.fetchNumberTrivia:
        return "/$number/trivia?json";
    }
  }

  @override
  Map<String, String>? get query => null;

  @override
  String get url => endpoint + path;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }
}

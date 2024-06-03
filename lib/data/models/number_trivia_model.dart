import 'package:json_annotation/json_annotation.dart';
import 'package:tdd_flutte_clean_architecture/domain/entities/number_trivia.dart';

part 'number_trivia_model.g.dart';

@JsonSerializable()
class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({
    required super.text,
    required super.number,
    required super.found,
    required super.type,
  });

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaModelFromJson(json);
  Map<String, dynamic> toJson() => _$NumberTriviaModelToJson(this);
}

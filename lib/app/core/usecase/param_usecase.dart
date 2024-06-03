abstract class ParamUseCase<Type, Param> {
  Future<Type> call(Param param);
}

part of './api_bloc.dart';
abstract class ApiState{

}
class FactLoading extends ApiState{
}
class FactFetched extends ApiState{
  final Mathfact? fact;
  FactFetched(this.fact);
}
class FactError extends ApiState{
}
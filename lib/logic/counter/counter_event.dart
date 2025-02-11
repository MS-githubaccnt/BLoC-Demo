part of './counter_bloc.dart';
sealed class CounterEvent {}
//restricts inheritance
//helps ensure unintended event classess and type safet
//if using swicth case statements somewhere in code based on event
// dart will force you to handle all the cases for a sealed classes
final class AddOne extends CounterEvent{}
final class RemoveOne extends CounterEvent{}
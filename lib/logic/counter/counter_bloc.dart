import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';
class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(CounterState(0)){
    on<AddOne>(_addOne);
    on<RemoveOne>(_removeOne);
  }
  void _addOne(event,emit){
    emit(CounterState(state.count+1));
  }
  void _removeOne(event,emit){
    emit(CounterState(state.count-1));
  }
}
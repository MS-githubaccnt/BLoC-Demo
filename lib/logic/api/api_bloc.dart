import "package:bloc_demo/data/data_providers/math_api.dart";
import "package:bloc_demo/data/models/math.dart";
import "package:flutter_bloc/flutter_bloc.dart";
part './api_state.dart';
part './api_event.dart';

class ApiBloc extends Bloc<ApiEvent,ApiState>{
  final _mathAPi=MathApi();
  ApiBloc():super(FactFetched(null)){
    on<Fetch>(_onFetch);
  }
  _onFetch(event,emit)async{
    try{
      emit(FactLoading());
      Mathfact? mathFact=await _mathAPi.fetchMathFact();
      if(mathFact==null){
        emit(FactError());
      }else{
        emit(FactFetched(mathFact));
      }
    }catch(e){
      emit(FactError());
    }
  }

}

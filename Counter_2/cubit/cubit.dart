import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/modules/counter_cubit/cubit/states.dart';

class CounCubit extends Cubit<CounterStates>{
  CounCubit() : super(CounterInitialState());

static CounCubit get(context)=>BlocProvider.of(context);
  int num = 0;
  void minus(){
    num--;
    emit(Counterminus(num));
  }
  void plus(){

    num++;
    emit(Counterplus(num));
  }

}
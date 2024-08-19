import 'counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int count = 0;
  void increaseCount() {
    count++;
    emit(CounterIncrease());
  }

  void decreaseCount() {
    if (count > 0) {
      count--;
    }
    emit(CounterDecrease());
  }
}

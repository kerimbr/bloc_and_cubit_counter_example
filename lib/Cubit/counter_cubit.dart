import 'package:flutter_bloc/flutter_bloc.dart';

// [CounterCubit], 'int' tipinde bir state'i bulunan bir Cubit sınıfıdır.
class CounterCubit extends Cubit<int>{

  // [CounterCubit] sınıfının başlangıç durumu '0' olarak belirlenmiştir.
  CounterCubit() : super(0);


  // 'state' değişkeni, [CounterCubit] sınıfının state'ini temsil eder.
  // 'emit' metodu, [CounterCubit] sınıfının state'ini güncellemek için kullanılır.

  // [increment] fonksiyonu, [CounterCubit] sınıfının state'ini arttırmak için kullanılır.
  void increment() => emit(state + 1);

  // [decrement] fonksiyonu, [CounterCubit] sınıfının state'ini azaltmak için kullanılır.
  void decrement() => emit(state - 1);

}
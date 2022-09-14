
import 'package:flutter_bloc/flutter_bloc.dart';

/// [CounterBloc] sınıfının tepki vereceği olaylar küme sınıfı.
abstract class CounterEvent {}

/// [CounterBloc] sınıfının tepki vereceği Increment olayı. [CounterEvent] sınıfından türetilmiştir.
class CounterIncrementEvent extends CounterEvent {}

/// [CounterBloc] sınıfı Bloc sınıfından türetelim.
/// [CounterBloc] sınıfı, [CounterEvent] sınıfından türeyen olayları dinleyecek ve [int] tipinde bir state'i olacak.
class CounterBloc extends Bloc<CounterEvent,int>{

  /// [CounterBloc] sınıfının başlangıç durumu '0' olarak belirlenmiştir.
  CounterBloc(): super(0){
    /// [CounterBloc] sınıfına bir event(olay) ekleyelim.
    /// [CounterBloc] sınıfının mevcut durumuna [state] ile erişebiliriz.
    /// [CounterBloc] sınıfının durumunu değiştirmek için [emit] metodu kullanılır.
    on<CounterIncrementEvent>((event, emit) => emit(state + 1));
  }

}
import 'package:bloc_and_qubit_example/Bloc/counter_bloc.dart';
import 'package:bloc_and_qubit_example/Cubit/counter_cubit.dart';
import 'package:flutter/material.dart';


Future<void> main() async {

  /// ----------------------------------- ///
  ///           Cubit KULLANIMI           ///
  /// ----------------------------------- ///


  /// `CounterCubit` sınıfından bir instance oluşturulur.
  final cubit = CounterCubit();

  /// oluşturduğumuz Cubit' in state'ine `state` ile erişilir.
  print(cubit.state); // 0


  /// Cubit' e interaksiyon/olay tetikliyerek state'ini değiştirebiliriz.
  cubit.increment();

  /// Yeni state'imize erişebiliriz.
  print(cubit.state); // 1

  /// `cubit` artık kullanılmıyorsa kapatılmalıdır.
  cubit.close();


  /// ----------------------------------- ///
  ///           Bloc KULLANIMI           ///
  /// ----------------------------------- ///

  /// `CounterBloc` sınıfından bir instance oluşturulur.
  final bloc = CounterBloc();

  /// oluşturduğumuz Bloc' un state'ine `state` ile erişilir.
  print(bloc.state); // 0

  /// Bloc' a interaksiyon/olay tetikliyerek state'ini değiştirebiliriz.
  bloc.add(CounterIncrementEvent());


  /// Event'in tetiklendiğini görmek için bekleyelim.
  /// *** Event'ler asenkron olarak çalıştığı için suni bir gecikme ekledik.
  await Future.delayed(Duration.zero);

  /// Yeni state'imize erişebiliriz.
  print(bloc.state); // 1


  /// `bloc` artık kullanılmıyorsa kapatılmalıdır.
  bloc.close();
}
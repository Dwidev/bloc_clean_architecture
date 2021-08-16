import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'conter_state.dart';

class ConterCubit extends Cubit<ConterState> {
  ConterCubit() : super(const ConterState(0));

  void resetValue() => emit(const ConterState(0));

  void increment() => emit(state.copyWith(conter: state.conter + 1));

  void decrement() => emit(state.copyWith(conter: state.conter - 1));
}

part of 'conter_cubit.dart';

@immutable
class ConterState extends Equatable {
  final int conter;

  const ConterState(this.conter);

  @override
  List<Object?> get props => [conter];

  ConterState copyWith({
    int? conter,
  }) {
    return ConterState(
      conter ?? this.conter,
    );
  }
}

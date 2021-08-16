import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<DataType, ErrorType> with _$Result<DataType, ErrorType> {
  factory Result.success(DataType data) = Success<DataType, ErrorType>;
  factory Result.error(ErrorType error) = Error<DataType, ErrorType>;
}

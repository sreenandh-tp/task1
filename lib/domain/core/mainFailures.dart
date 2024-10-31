import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainFailures.freezed.dart';

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.clientFailure() = _clientFailure;

  const factory MainFailures.serverFailure() = _serverFailure;
}

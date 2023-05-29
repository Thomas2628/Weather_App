// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {}

class SearchInitialEvent extends SearchEvent {
  @override
  List<Object?> get props => [];
}

class FetchOpenMeteoComEvent extends SearchEvent {
  FetchOpenMeteoComEvent({
    required this.onFetchOpenMeteoComEventSuccess,
    required this.onFetchOpenMeteoComEventError,
  });

  Function onFetchOpenMeteoComEventSuccess;

  Function onFetchOpenMeteoComEventError;

  @override
  List<Object?> get props => [
        onFetchOpenMeteoComEventSuccess,
        onFetchOpenMeteoComEventError,
      ];
}

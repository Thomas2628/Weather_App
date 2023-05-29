import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:thomas_s_application2/presentation/search_screen/models/search_model.dart';
import 'package:thomas_s_application2/data/models/url/get_url_resp.dart';
import 'dart:async';
import 'package:thomas_s_application2/data/repository/repository.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState) {
    on<SearchInitialEvent>(_onInitialize);
    on<FetchOpenMeteoComEvent>(_callFetchUrl);
  }

  final _repository = Repository();

  var getUrlResp = GetUrlResp();

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {}
  FutureOr<void> _callFetchUrl(
    FetchOpenMeteoComEvent event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.fetchUrl().then((value) async {
      getUrlResp = value;
      _onFetchUrlSuccess(value, emit);
      event.onFetchOpenMeteoComEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchUrlError();
      event.onFetchOpenMeteoComEventError.call();
    });
  }

  void _onFetchUrlSuccess(
    GetUrlResp resp,
    Emitter<SearchState> emit,
  ) {}
  void _onFetchUrlError() {
    //implement error method body...
  }
}

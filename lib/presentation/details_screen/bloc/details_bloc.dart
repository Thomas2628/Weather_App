import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listday_item_model.dart';
import 'package:thomas_s_application2/presentation/details_screen/models/details_model.dart';
part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(DetailsState initialState) : super(initialState) {
    on<DetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailsInitialEvent event,
    Emitter<DetailsState> emit,
  ) async {
    emit(state.copyWith(
        detailsModelObj: state.detailsModelObj
            ?.copyWith(listdayItemList: fillListdayItemList())));
  }

  List<ListdayItemModel> fillListdayItemList() {
    return List.generate(4, (index) => ListdayItemModel());
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listparisfrance_item_model.dart';
import 'package:thomas_s_application2/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            listparisfranceItemList: fillListparisfranceItemList())));
    Future.delayed(const Duration(milliseconds: 1000), () {
      NavigatorService.pushNamed(
        AppRoutes.detailsScreen,
      );
    });
  }

  List<ListparisfranceItemModel> fillListparisfranceItemList() {
    return List.generate(3, (index) => ListparisfranceItemModel());
  }
}

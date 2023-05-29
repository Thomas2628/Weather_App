import 'package:equatable/equatable.dart';
import 'listparisfrance_item_model.dart';

// ignore: must_be_immutable
class HomeModel extends Equatable {
  HomeModel({this.listparisfranceItemList = const []});

  List<ListparisfranceItemModel> listparisfranceItemList;

  HomeModel copyWith(
      {List<ListparisfranceItemModel>? listparisfranceItemList}) {
    return HomeModel(
      listparisfranceItemList:
          listparisfranceItemList ?? this.listparisfranceItemList,
    );
  }

  @override
  List<Object?> get props => [listparisfranceItemList];
}

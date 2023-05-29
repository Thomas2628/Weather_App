import 'package:equatable/equatable.dart';
import 'listday_item_model.dart';

// ignore: must_be_immutable
class DetailsModel extends Equatable {
  DetailsModel({this.listdayItemList = const []});

  List<ListdayItemModel> listdayItemList;

  DetailsModel copyWith({List<ListdayItemModel>? listdayItemList}) {
    return DetailsModel(
      listdayItemList: listdayItemList ?? this.listdayItemList,
    );
  }

  @override
  List<Object?> get props => [listdayItemList];
}

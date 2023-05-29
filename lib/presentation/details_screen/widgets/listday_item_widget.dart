import '../models/listday_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thomas_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListdayItemWidget extends StatelessWidget {
  ListdayItemWidget(this.listdayItemModelObj);

  ListdayItemModel listdayItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            bottom: 2,
          ),
          child: Text(
            listdayItemModelObj.dayTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold24Gray800,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgLightbulbBlack900,
          height: getVerticalSize(
            30,
          ),
          width: getHorizontalSize(
            32,
          ),
          margin: getMargin(
            left: 124,
            top: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 27,
            top: 2,
          ),
          child: Text(
            "lbl_10".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold24,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 2,
          ),
          child: Text(
            "lbl_25".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterSemiBold24Gray800,
          ),
        ),
      ],
    );
  }
}

import '../models/listparisfrance_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thomas_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListparisfranceItemWidget extends StatelessWidget {
  ListparisfranceItemWidget(this.listparisfranceItemModelObj, {this.toDetail});

  ListparisfranceItemModel listparisfranceItemModelObj;

  VoidCallback? toDetail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toDetail?.call();
      },
      child: Container(
        padding: getPadding(
          left: 25,
          top: 15,
          right: 25,
          bottom: 15,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listparisfranceItemModelObj.parisfranceTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold20,
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_20".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold32,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: Text(
                    "lbl_ensoleill".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold12,
                  ),
                ),
              ],
            ),
            CustomImageView(
              svgPath: ImageConstant.imgLightbulb,
              height: getVerticalSize(
                60,
              ),
              width: getHorizontalSize(
                59,
              ),
              margin: getMargin(
                right: 7,
                bottom: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

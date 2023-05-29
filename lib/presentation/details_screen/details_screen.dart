import '../details_screen/widgets/listday_item_widget.dart';
import 'bloc/details_bloc.dart';
import 'models/details_model.dart';
import 'models/listday_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thomas_s_application2/core/app_export.dart';
import 'package:thomas_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:thomas_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:thomas_s_application2/widgets/app_bar/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailsBloc>(
        create: (context) =>
            DetailsBloc(DetailsState(detailsModelObj: DetailsModel()))
              ..add(DetailsInitialEvent()),
        child: DetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray400,
            appBar: CustomAppBar(
                height: getVerticalSize(30),
                leadingWidth: 26,
                leading: AppbarImage(
                    height: getSize(12),
                    width: getSize(12),
                    svgPath: ImageConstant.imgGameiconsnetworkbars,
                    margin: getMargin(left: 14, top: 9, bottom: 9)),
                title: Padding(
                    padding: getPadding(left: 5),
                    child: Row(children: [
                      AppbarTitle(
                          text: "lbl_figma".tr, margin: getMargin(top: 1)),
                      AppbarImage(
                          height: getSize(12),
                          width: getSize(12),
                          svgPath: ImageConstant.imgOouinetwork,
                          margin: getMargin(left: 5, top: 1, bottom: 1)),
                      AppbarTitle(
                          text: "lbl_9_41_am".tr,
                          margin: getMargin(left: 92, bottom: 1))
                    ])),
                actions: [
                  AppbarImage(
                      height: getSize(10),
                      width: getSize(10),
                      svgPath: ImageConstant.imgMaterialsymbolsbluetooth,
                      margin: getMargin(left: 16, top: 9, right: 3, bottom: 8)),
                  AppbarTitle(
                      text: "lbl_100".tr,
                      margin: getMargin(left: 3, top: 7, right: 3, bottom: 6)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgVideocamera,
                      margin: getMargin(left: 5, top: 3, right: 19))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 21),
                    child: Padding(
                        padding: getPadding(left: 18, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(32),
                                    width: getSize(32),
                                    onTap: () {
                                      toHomeScreen(context);
                                    }),
                                Padding(
                                    padding: getPadding(left: 12, bottom: 1),
                                    child: Text("lbl_paris_france".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterSemiBold24))
                              ]),
                              Container(
                                  margin:
                                      getMargin(left: 2, top: 33, right: 23),
                                  padding: getPadding(
                                      left: 19, top: 17, right: 19, bottom: 17),
                                  decoration: AppDecoration.outlineBlack9003f1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 3),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_ensoleill".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold16),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 15),
                                                            child: Text(
                                                                "lbl_20".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold3251))
                                                      ])),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulb,
                                                  height: getVerticalSize(67),
                                                  width: getHorizontalSize(60),
                                                  margin: getMargin(
                                                      left: 179, bottom: 10))
                                            ]),
                                        Container(
                                            width: getHorizontalSize(274),
                                            margin: getMargin(
                                                top: 7, right: 40, bottom: 13),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_aujourd_hui_le2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#000000"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl_ensoleill2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#5f05f2"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "msg_il_y_aura_une"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#000000"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl_10_c".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#5f05f2"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text:
                                                          "msg_et_un_maximum_de"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#000000"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl_25_c".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#5f05f2"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#000000"),
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w600))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 36, right: 27),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 5),
                                            child: Text("lbl_mercredi".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold24Gray800)),
                                        Padding(
                                            padding:
                                                getPadding(left: 143, top: 5),
                                            child: Text("lbl_10".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold24)),
                                        Padding(
                                            padding:
                                                getPadding(left: 15, top: 5),
                                            child: Text("lbl_25".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold24Gray800))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 17),
                                  child: Row(children: [
                                    Container(
                                        padding: getPadding(
                                            left: 22,
                                            top: 7,
                                            right: 22,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .fillBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 6),
                                                  child: Text("lbl_09h".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold14)),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulbBlack900,
                                                  height: getVerticalSize(42),
                                                  width: getHorizontalSize(41),
                                                  margin: getMargin(top: 11)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 10,
                                                      bottom: 1),
                                                  child: Text("lbl_20".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterSemiBold14DeeppurpleA700))
                                            ])),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(
                                                left: 28, top: 7, bottom: 8),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text("lbl_10h".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold14),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            45),
                                                                child: Text(
                                                                    "lbl_11h"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            52),
                                                                child: Text(
                                                                    "lbl_12h"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            45),
                                                                child: Text(
                                                                    "lbl_13h"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLightbulbBlack900,
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                width:
                                                                    getHorizontalSize(
                                                                        41)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLightbulbBlack900,
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                width:
                                                                    getHorizontalSize(
                                                                        41),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            29)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLightbulbBlack900,
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                width:
                                                                    getHorizontalSize(
                                                                        41),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            34)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLightbulbBlack900,
                                                                height:
                                                                    getVerticalSize(
                                                                        42),
                                                                width:
                                                                    getHorizontalSize(
                                                                        41),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            29))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 7,
                                                          top: 10,
                                                          right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text("lbl_21".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterSemiBold14DeeppurpleA700),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            48),
                                                                child: Text(
                                                                    "lbl_21".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14DeeppurpleA700)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            53),
                                                                child: Text(
                                                                    "lbl_22".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14DeeppurpleA700)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            46),
                                                                child: Text(
                                                                    "lbl_22".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterSemiBold14DeeppurpleA700))
                                                          ]))
                                                ])))
                                  ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 36, right: 27),
                                  child: BlocSelector<DetailsBloc, DetailsState,
                                          DetailsModel?>(
                                      selector: (state) =>
                                          state.detailsModelObj,
                                      builder: (context, detailsModelObj) {
                                        return ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(13));
                                            },
                                            itemCount: detailsModelObj
                                                    ?.listdayItemList.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ListdayItemModel model =
                                                  detailsModelObj
                                                              ?.listdayItemList[
                                                          index] ??
                                                      ListdayItemModel();
                                              return ListdayItemWidget(model);
                                            });
                                      })),
                              Padding(
                                  padding: getPadding(left: 6, top: 46),
                                  child: Text("lbl_plus_d_infos".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterSemiBold24Gray800)),
                              Padding(
                                  padding: getPadding(left: 53, top: 32),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(68),
                                        child: Text("msg_chances_de_pluie".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16Black900)),
                                    Container(
                                        width: getHorizontalSize(81),
                                        margin: getMargin(
                                            left: 92, top: 2, bottom: 1),
                                        child: Text("lbl_taux_d_humidit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtInterSemiBold16Black900))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 63, top: 9),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgNotificationBlack900,
                                        height: getVerticalSize(51),
                                        width: getHorizontalSize(49)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgShape,
                                        height: getVerticalSize(46),
                                        width: getHorizontalSize(56),
                                        margin: getMargin(
                                            left: 117, top: 1, bottom: 3))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 74, top: 13),
                                  child: Row(children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("lbl_0".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16DeeppurpleA700)),
                                    Padding(
                                        padding:
                                            getPadding(left: 147, bottom: 3),
                                        child: Text("lbl_102".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16DeeppurpleA700))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 19),
                                                child: Text("lbl_vent".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold16Black900)),
                                            Container(
                                                width: getHorizontalSize(100),
                                                margin: getMargin(left: 103),
                                                child: Text(
                                                    "msg_temp_rature_ressentie"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtInterSemiBold16Black900))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 59, top: 9),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgShapeBlack900,
                                        height: getVerticalSize(52),
                                        width: getHorizontalSize(60)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgComputer,
                                        height: getVerticalSize(52),
                                        width: getHorizontalSize(53),
                                        margin: getMargin(left: 116))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 44, top: 12),
                                  child: Row(children: [
                                    Text("lbl_ne_40km_h".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold16DeeppurpleA700),
                                    Padding(
                                        padding: getPadding(left: 102),
                                        child: Text("lbl_20_5_c".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold16DeeppurpleA700))
                                  ]))
                            ]))))));
  }

  toHomeScreen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}

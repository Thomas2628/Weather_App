import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:thomas_s_application2/core/app_export.dart';
import 'package:thomas_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:thomas_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:thomas_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SearchScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
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
                        margin:
                            getMargin(left: 16, top: 9, right: 3, bottom: 8)),
                    AppbarTitle(
                        text: "lbl_100".tr,
                        margin:
                            getMargin(left: 3, top: 7, right: 3, bottom: 6)),
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgVideocamera,
                        margin: getMargin(left: 5, top: 3, right: 19))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(all: 14),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 4),
                            child: Text("msg_ajouter_une_ville".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold24)),
                        GestureDetector(
                            onTap: () {
                              onTapRowsearch(context);
                            },
                            child: Container(
                                margin: getMargin(top: 14),
                                padding: getPadding(
                                    left: 61, top: 7, right: 61, bottom: 7),
                                decoration: AppDecoration.fillGray500.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgSearch,
                                      height: getVerticalSize(18),
                                      width: getHorizontalSize(19),
                                      margin: getMargin(top: 1)),
                                  Padding(
                                      padding: getPadding(
                                          left: 20, top: 1, bottom: 3),
                                      child: Text("msg_saisissez_le_nom".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12))
                                ]))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtParisfrance(context);
                            },
                            child: Padding(
                                padding: getPadding(top: 52),
                                child: Text("lbl_paris_france".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium14))),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray50001)),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Text("lbl_ville_pays".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium14)),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray50001)),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Text("lbl_ville_pays".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium14)),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray50001)),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Text("lbl_ville_pays".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium14)),
                        Padding(
                            padding: getPadding(top: 17, bottom: 5),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray50001))
                      ]))));
    });
  }

  onTapRowsearch(BuildContext context) {
    context.read<SearchBloc>().add(
          FetchOpenMeteoComEvent(
            onFetchOpenMeteoComEventSuccess: () {
              _onFetchUrlEventSuccess(context);
            },
            onFetchOpenMeteoComEventError: () {
              _onFetchUrlEventError(context);
            },
          ),
        );
  }

  void _onFetchUrlEventSuccess(BuildContext context) {
    Fluttertoast.showToast(
      msg: "Bravo",
    );
  }

  void _onFetchUrlEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg: "AHHHHHHHH",
    );
  }

  onTapTxtParisfrance(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.homeScreen,
    );
  }
}

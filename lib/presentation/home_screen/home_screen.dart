import '../home_screen/widgets/listparisfrance_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/listparisfrance_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thomas_s_application2/core/app_export.dart';
import 'package:thomas_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:thomas_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:thomas_s_application2/widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
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
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 11, right: 16, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 2, right: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_mes_villes".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterSemiBold24),
                                CustomImageView(
                                    svgPath: ImageConstant.imgIcroundplus,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 5),
                                    onTap: () {
                                      onTapImgIcroundplus(context);
                                    })
                              ])),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 33),
                              child:
                                  BlocSelector<HomeBloc, HomeState, HomeModel?>(
                                      selector: (state) => state.homeModelObj,
                                      builder: (context, homeModelObj) {
                                        return ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(20));
                                            },
                                            itemCount: homeModelObj
                                                    ?.listparisfranceItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ListparisfranceItemModel model =
                                                  homeModelObj?.listparisfranceItemList[
                                                          index] ??
                                                      ListparisfranceItemModel();
                                              return ListparisfranceItemWidget(
                                                  model, toDetail: () {
                                                toDetail(context);
                                              });
                                            });
                                      })))
                    ]))));
  }

  toDetail(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailsScreen);
  }

  onTapImgIcroundplus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }
}

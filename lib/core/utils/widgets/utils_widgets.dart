import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/gen/assets.gen.dart';

class UtilWidget {
  static const Widget sizedBox5 = SizedBox(height: 5);

  static const Widget sizedBox10 = SizedBox(height: 10);

  static const Widget sizedBox30 = SizedBox(height: 30);

  static const Widget sizedBox17 = SizedBox(height: 17);

  static const Widget sizedBox8 = SizedBox(height: 8);

  static const Widget sizedBoxWidth10 = SizedBox(width: 10);

  static const Widget sizedBoxWidth5 = SizedBox(width: 5);

  static const Widget sizedBoxWidth3 = SizedBox(width: 3);

  static Widget sizedBoxPaddingHuge =
      SizedBox(height: AppDimens.paddingHuge.ratioH);

  static Widget sizedBoxWidthPadding =
      SizedBox(width: AppDimens.defaultPadding.ratioW);

  static Widget sizedBoxWithPaddingHuge =
      SizedBox(width: AppDimens.paddingHuge.ratioW);

  static Widget sizedBoxPadding =
      SizedBox(height: AppDimens.defaultPadding.ratioH);

  static Widget sizedBoxPaddingMedium =
      SizedBox(height: AppDimens.paddingMedium.ratioH);

  static Widget sizedBoxWidthPaddingSmall =
      SizedBox(width: AppDimens.paddingSmall.ratioW);

  static Widget sizedBoxHeightSafeAreaTop(BuildContext context) => SizedBox(
        height: context.viewPaddingTop,
      );
  static Widget sizedBoxHeightSafeAreaBottom(BuildContext context) => SizedBox(
        height: context.viewPaddingBottom,
      );

  static Widget navigatorWithBottomBar(int id, Widget child) {
    return Navigator(
      key: Get.nestedKey(id),
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (_) => child,
      ),
    );
  }

  static PreferredSize customAppBar(
    BuildContext context, {
    Widget? leading,
    Widget? title,
    Widget? action,
  }) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        AppDimens.appBarSize(context),
      ),
      child: customAppBarBody(
        context,
        leading: leading,
        title: title,
        action: action,
      ),
    );
  }

  static Widget appBarIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: AppDimens.sizeIconMedium,
    );
  }

  static Widget customAppBarBody(
    BuildContext context, {
    Widget? leading,
    Widget? title,
    Widget? action,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.defaultPadding,
        vertical: AppDimens.paddingVerySmall,
      ),
      height: AppDimens.appBarSize(context),
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.srcImagesNewHeader01.provider(),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          if (title != null)
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: title,
              ),
            ),
          if (leading != null)
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: leading,
              ),
            ),
          if (action != null)
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: action,
              ),
            ),
          UtilWidget.sizedBoxPadding,
        ],
      ),
    );
  }

  static Widget widgetWithOverlay(WidgetCallback child) {
    return Column(
      children: [
        Expanded(child: child()),
        const SizedBox(
          height: kBottomNavigationBarHeight,
        )
      ],
    );
  }

  static Widget appBarBgImage = Assets.images.srcImagesNewHeader01.image(
    fit: BoxFit.fill,
    height: double.infinity,
    width: double.infinity,
  );

  static Widget buildLogo(String imgLogo, double height) {
    return SizedBox(
      height: height,
      child: Image.asset(imgLogo),
    );
  }

  /// Sử dụng để tránh trường hợp click liên tiếp khi thực hiện function
  static Widget baseOnAction({
    required Function() onTap,
    required Widget child,
  }) {
    return GestureDetector(
      onTap: () => FunctionUtils.runFunction(onTap),
      child: child,
    );
  }

  static const Widget buildLoading = CupertinoActivityIndicator();

  Widget buildVerticalDivider({Color? color, double? width}) {
    return VerticalDivider(
      width: width ?? 1,
      color: color ?? Colors.grey,
    );
  }

  static const String requiredLogin = "Đăng nhập đê tiếp tục";

  static Widget buildWidgetRequiredLogin(
    WidgetCallback child,
  ) {
    return Obx(
      () => Get.find<AppController>().isLogin.isTrue
          ? child()
          : BaseButton(
              backgroundColor: Colors.black,
              width: Get.width / 2,
              function: () {
                ///TODO: Required login
                //   PageRoutes.navigator(
                //     page: LoginPage(
                //   onSuccessLogin: () async {
                //     Get.back();
                //   },
                //   isRequiredLogin: true,
                // ));
              },
              titleButton: requiredLogin,
            ).paddingSymmetric(vertical: AppDimens.defaultPadding),
    );
  }

  static Widget buildErrorOccurred(
    BaseGetxController controller, {
    required Widget child,
    required Function() onReload,
    bool isPage = true,
    required bool Function() isHaveData,
    bool isShowAppBar = false,
  }) {
    return Obx(
      () => controller.isError.value && !isHaveData()
          ? isPage
              ? PageScaffold(
                  showBackButton: true,
                  showAppBar: isShowAppBar,
                  child: LoadingOverlayWidget(
                    isLoadingPage: isPage,
                    child: _buildError(isPage, onReload: onReload),
                  ),
                )
              : _buildError(isPage, onReload: onReload)
          : child,
    );
  }

  static Widget _buildError(bool isPage, {required Function() onReload}) {
    return SizedBox(
      height: isPage ? Get.height : null,
      width: isPage ? Get.width : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextBuild(
            title: ErrorStr.cannotGetData,
          ),
          UtilWidget.sizedBoxPadding,
          BaseButton(
            backgroundColor: isPage ? Colors.lightBlue : Colors.white,
            width: Get.width * 2 / 3,
            function: onReload,
            titleButton: AppStr.reload,
          )
        ],
      ),
    );
  }

  static Widget buildDivider({
    double height = 1.0,
    double thickness = 1.0,
    double indent = 0.0,
    double endIndent = 1.0,
    Color? color,
  }) {
    return Divider(
      height: height,
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color,
    );
  }

  static Widget buildDividerDefault() {
    return const Divider(
      height: 10,
      thickness: 1,
      indent: AppDimens.paddingSmall,
      endIndent: AppDimens.paddingSmall,
    );
  }

  static Widget buildRecommend(
    TextEditingController textController,
    Function(String) function,
  ) {
    RxList<String> listResultRecommend = RxList<String>();
    RxList<String> listRecommend = RxList<String>();
    void addRecommend(int price) {
      for (int i = 0; i < 3; i++) {
        price = price * 10;
        if (price <= 50000000) {
          listResultRecommend.add(price.toString());
        } else if (listResultRecommend.isEmpty) {
          listResultRecommend.value = ["5000", "50000", "500000"];
        }
      }
      listRecommend.value = listResultRecommend.toList();
    }

    Future<void> recommend(int price) async {
      addRecommend(price);
      if (price == 0) {
        listResultRecommend.clear();
        recommend(50);
      }
    }

    //default when user ontap after textinput valuable
    if (textController.text.isNotEmpty) {
      int oldPrice = int.parse(textController.text.toString().replaceAllMapped(
          (RegExp(r'[,.]', caseSensitive: true)), (Match m) => ""));
      if (oldPrice != 0) {
        addRecommend(oldPrice);
      } else {
        recommend(50);
      }
    } else {
      recommend(50);
    }

    textController.addListener(
      () {
        if (textController.text.isNotEmpty) {
          listResultRecommend.clear();
          int price = int.parse(textController.text.toString().replaceAllMapped(
              (RegExp(r'[,.]', caseSensitive: true)), (Match m) => ""));
          recommend(price);
        } else {
          listResultRecommend.clear();
          recommend(50);
        }
      },
    );
    return Obx(
      () => SizedBox(
        width: double.infinity,
        height: 55,
        child: Row(
          mainAxisAlignment: listRecommend.length < 3
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceAround,
          children: [
            for (int index = 0; index < listRecommend.length; index++)
              buildBtnRecommend(
                onPressed: () {
                  function(
                    CurrencyUtils.formatCurrencyForeign(
                      listRecommend[index].toString(),
                    ),
                  );
                },
                child: AutoSizeText(
                  CurrencyUtils.formatCurrencyForeign(
                    listRecommend[index].toString(),
                  ),
                ),
                color: listRecommend[index].toString() == "0"
                    ? Colors.white
                    : Colors.blue.shade50,
              ).paddingOnly(
                  left: listRecommend.length < 3
                      ? AppDimens.paddingVerySmall
                      : 0),
          ],
        ),
      ),
    );
  }

  static Widget buildBtnRecommend({
    var onPressed,
    var child,
    double? width,
    Color? color,
    Color? colorBorder,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: Get.width / 3 - AppDimens.paddingVerySmall * 2.5,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color ?? Colors.blue.shade50,
            border: Border.all(
              color: colorBorder ?? Colors.white,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: child,
      ),
    );
  }

  static Widget rowInfo(String key, String value,
      {bool showDivider = true, Color textColor = Colors.white}) {
    return Column(
      children: [
        Row(
          children: [
            TextBuild(
              title: key,
              textColor: textColor,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: TextBuild(
                  title: value,
                  textColor: textColor,
                ),
              ),
            ),
          ],
        ),
        if (showDivider) ...[
          UtilWidget.sizedBoxPadding,
          UtilWidget.buildDivider(color: Colors.black.withOpacity(0.2)),
        ],
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}

class BuildDropDown extends StatelessWidget {
  const BuildDropDown(
      {super.key,
      this.fillColor,
      required this.mapData,
      required this.currentData,
      required this.onChanged});

  final Color? fillColor;

  final Map<int?, String> mapData;

  final Rx<int?> currentData;

  final Function(int?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: DropdownButtonHideUnderlineCustom(
          child: DropdownButtonCustom<int>(
            dropdownColor: fillColor,
            menuMaxHeight: 20,
            items: mapData
                .map((key, value) {
                  return MapEntry(
                      key,
                      DropdownMenuItemCustom<int>(
                        value: key,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextBuild(
                            title: mapData[key] ?? "",
                          ),
                        ),
                      ));
                })
                .values
                .toList(),
            value: currentData.value,
            onChanged: onChanged,
          ),
        ).paddingOnly(left: AppDimens.paddingSmall),
      ).paddingOnly(
        bottom: AppDimens.paddingTitleAndTextForm,
      ),
    );
  }
}

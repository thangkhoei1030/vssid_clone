import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';

class AppDimens {
  static double fontSize10() => 10.divSF;
  static double fontSmallest() => 12.divSF;
  static double fontSmall() => 14.divSF;
  static double fontMedium() => 16.divSF;
  static double fontBig() => 18.divSF;
  static double fontBiggest() => 20.divSF;
  static double fontSize24() => 24.sp.divSF;
  static double fontSizeVerySmallest() => 8.divSF;

  static double sizeImageSmall = 30.ratioH;
  static double sizeImage35 = 35.ratioH;
  static double sizeImage = 50.ratioH;
  static double sizeImageMedium = 70.ratioH;
  static double sizeImageBig = 83.ratioH;
  static double sizeImageLarge = 200.ratioH;

  static double sizeTextVerySmall = 8.sp;
  static double sizeTextSmall = 12.sp;
  static double sizeTextDefault = 14.sp;
  static double sizeTextMedium = 16.sp;
  static double sizeTextLarge = 20.sp;
  static double sizeTextVeryLarge = 32.sp;
  static double btnSmall = 20.ratioH;
  static double btnMedium = 50.ratioH;
  static double btnDefault = 40.ratioH;
  static double btnLarge = 70.ratioH;
  static double btnQuickCreate = 73.ratioH;
  static double btnRecommend = 30.ratioH;

  static double sizeIconVerySmall = 12.ratioH;
  static double sizeIconSmall = 16.ratioH;
  static double sizeIcon = 20.ratioH;
  static double sizeIconMedium = 24.ratioH;
  static double sizeIconSpinner = 30.ratioH;
  static double sizeIconLarge = 36.ratioH;
  static double sizeIconVeryLarge = 48.ratioH;
  static double sizeIconMoreLarge = 70.ratioH;
  static double sizeIconMoreLargeWindow = 100.ratioH;
  static double sizeIconExtraLarge = 200.ratioH;
  static double sizeDialogNotiIcon = 40.ratioH;
  static double sizeChartMin = 500.ratioH;
  static double sizeChartBtn = 150.ratioH;

  static double heightChip = 30.ratioH;
  static double widthChip = 100.ratioW;

  static const int maxLengthDescription = 250;

  static const double defaultPadding = 16.0;
  static const double paddingVerySmall = 8.0;
  static const double paddingSmallest = 4.0;
  static const double paddingSmall = 12.0;
  static const double paddingMedium = 20.0;
  static const double paddingLarge = 24.0;
  static const double paddingHuge = 32.0;
  static const double paddingItemList = 18.0;
  static const double paddingLabel = 4;
  static const double paddingVerySmallest = 2;

  static const double showAppBarDetails = 200;
  static double sizeAppBarBig = 120.ratioH;
  static double sizeAppBarMedium = 92.ratioH;
  static double sizeAppBar = 72.ratioH;
  static double sizeAppBarSmall = 44.ratioH;

  static const double sizeGidView = 130;
  static const double sizeGidDesktop = 160;

  static const double sizeBottom = 70;

  static const double heightBoxSearch = 60;
  static const double heightBoxSearchMin = 50;
  static const double heightBottomSheetViewMore = 300;

  // radiusBorder
  static const double radius8 = 8;
  static const double size5 = 5;
  static const double radius20 = 20;
  static const double radius24 = 24;
  static const double radiusDefault = 44;
  static const double borderDefault = 12;
  // home
  static const double sizeItemNewsHome = 110;
  static const double heightImageLogoHome = 50;
  // divider
  static const double paddingDivider = 15.0;

  // appbar
  static const double paddingSearchBarBig = 50;
  static const double paddingSearchBar = 45;
  static const double paddingSearchBarMedium = 30;
  static const double paddingSearchBarSmall = 10;

  static const double paddingTopScroll = 70;
  static const double paddingTopDefault = 0;

  //other
  static const double paddingTitleAndTextForm = 3;
  static double bottomPadding() {
    return Platform.isIOS ? paddingMedium : paddingSmall;
  }

  static double topScrollPadding(bool isScrollToTop) {
    return isScrollToTop ? paddingTopDefault : paddingTopScroll;
  }

  static const double groupMaxWidth = 200;
  static const double infoProductSizeDefault = 75;
  static const double spaceBetweenGridViewDefault = 10;
  //Mặc định item sẽ có kích thước là 120px.
  static const double widthItemConst = 90;
  static const double ratioDefaultSlider = 16 / 9;
  static const double categoryProductSize = 50;
  static const double iconListTileSizeDefaut = 16;
}

extension GetSizeScreen on num {
  /// Tỉ lệ fontSize của các textStyle
  double get divSF {
    return this / Get.textScaleFactor;
  }

  // Tăng chiều dài theo font size
  double get mulSF {
    return this * Get.textScaleFactor;
  }
}

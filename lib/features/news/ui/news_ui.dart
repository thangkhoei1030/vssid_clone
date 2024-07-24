import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class NewsPage extends BaseRefreshWidget<NewsController> {
  const NewsPage({super.key});
  @override
  Widget buildWidgets(BuildContext context) {
    return buildPageReload(
      showBackButton: true,
      backgroundColorAppBar: context.onSurfaceColor,
      customAppBar: UtilWidget.customAppBar(
        context,
        leading: SimpleButton(
          onPressed: () {
            Get.back();
          },
          child: UtilWidget.appBarIcon(Icons.arrow_back_ios_new),
        ),
        title: TextBuild(
          title: NewsString.news.toUpperCase(),
          fontSize: AppDimens.sizeTextLarge,
          textColor: Colors.white,
        ),
      ),
      child: UtilWidget.buildErrorOccurred(
        controller,
        isPage: false,
        child: Obx(
          () => Column(
            children: controller.listNews
                .map((e) => Column(
                      children: [
                        NewsItem(
                          response: e,
                        ),
                        UtilWidget.sizedBoxPadding,
                      ],
                    ))
                .toList(),
          ).paddingSymmetric(horizontal: AppDimens.defaultPadding),
        ),
        onReload: controller.getData,
        isHaveData: () => controller.listNews.isNotEmpty,
      ),
    );
  }
}

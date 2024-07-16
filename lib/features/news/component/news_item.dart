import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.response});

  final PublicServiceResponse response;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextBuild(
          title: response.name ?? "",
          decoration: TextDecoration.underline,
          textColor: context.onSurfaceColor,
          textAlign: TextAlign.start,
        ),
        UtilWidget.sizedBoxPadding,
        NetworkImageWidget(
          widthImage: Get.width,
          heightImage: Get.width * 9 / 16,
          urlImage: response.imageAvatar.toUrlCDN(),
        ),
        UtilWidget.sizedBoxPadding,
        TextBuild(
          title: response.content ?? "",
          decoration: TextDecoration.underline,
          textColor: context.onSurfaceColor,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

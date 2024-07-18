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
        NetworkImageWidget(
          widthImage: Get.width,
          heightImage: Get.width * 9 / 16,
          urlImage: response.imageAvatar.toUrlCDN(),
          fit: BoxFit.cover,
        ),
        UtilWidget.sizedBox10,
        TextBuild(
          title: response.name ?? "",
          textColor: context.onSurfaceColor,
          textAlign: TextAlign.start,
          isBoldText: true,
        ),
        UtilWidget.sizedBoxPadding,
        TextBuild(
          title: response.description ?? "",
          textColor: context.onPrimaryColor,
          textAlign: TextAlign.start,
          fontSize: AppDimens.sizeTextSmall,
        ),
      ],
    );
  }
}

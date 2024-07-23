import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';

class ServiceItemComponent extends StatelessWidget {
  const ServiceItemComponent({super.key, required this.response});

  final PublicServiceResponse response;

  @override
  Widget build(BuildContext context) {
    const colorText = Color.fromRGBO(48, 109, 172, 1);
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: NetworkImageWidget(
                  urlImage: response.imageAvatar.toUrlCDN(),
                  widgetImageBuilder: (ctx, imageProvider) => Container(
                    height: 50.ratioH,
                    width: 50.ratioW,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuild(
                      textAlign: TextAlign.start,
                      title: response.name ?? "",
                      fontSize: AppDimens.sizeTextDefault,
                      textColor: colorText,
                    ),
                    TextBuild(
                      textAlign: TextAlign.start,
                      title: response.description ?? "",
                    ),
                    UtilWidget.sizedBoxPadding,
                    UtilWidget.buildDivider(thickness: 0.3),
                  ],
                ).paddingSymmetric(horizontal: AppDimens.paddingSmall),
              )
            ],
          ),
        ),
        UtilWidget.sizedBoxPadding,
      ],
    );
  }
}

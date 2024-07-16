import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class ServiceItemComponent extends StatelessWidget {
  const ServiceItemComponent({super.key, required this.response});

  final PublicServiceResponse response;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.account_circle_outlined,
                  color: context.onSurfaceColor,
                  size: AppDimens.sizeIconLarge,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBuild(
                      textAlign: TextAlign.start,
                      title: response.name ?? "",
                      isBoldText: true,
                      fontSize: AppDimens.sizeTextMedium,
                      textColor: context.onSurfaceColor,
                    ),
                    TextBuild(
                      textAlign: TextAlign.start,
                      title: response.description ?? "",
                    ),
                    UtilWidget.sizedBoxPadding,
                    UtilWidget.buildDivider(),
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

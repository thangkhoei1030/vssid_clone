import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class HistoryItemComponent extends StatelessWidget {
  const HistoryItemComponent({
    super.key,
    required this.response,
  });

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
                    UtilWidget.sizedBoxPadding,
                    TextBuild(
                      textAlign: TextAlign.start,
                      title: response.content ?? "",
                    ),
                    UtilWidget.sizedBoxPadding,
                    Row(
                      children: [
                        TextBuild(
                          title: response.created ?? "",
                        ),
                        const Spacer(),
                        TextBuild(
                          title: response.status == 1
                              ? PublicServiceString.statusSuccess
                              : PublicServiceString.statusFail,
                          textColor: Colors.green,
                        ),
                      ],
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

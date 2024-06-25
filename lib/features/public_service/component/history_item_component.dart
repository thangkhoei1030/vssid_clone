import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';

class HistoryItemComponent extends StatelessWidget {
  const HistoryItemComponent(
      {super.key, required this.title, required this.content, this.dateTime});

  final String title;

  final String content;

  final DateTime? dateTime;

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
                      title: title,
                      isBoldText: true,
                      fontSize: AppDimens.sizeTextMedium,
                      textColor: context.onSurfaceColor,
                    ),
                    UtilWidget.sizedBoxPadding,
                    TextBuild(
                      textAlign: TextAlign.start,
                      title: content,
                    ),
                    UtilWidget.sizedBoxPadding,
                    Row(
                      children: [
                        TextBuild(
                          title: DateTimeFormat().convertToString(
                            DateTime.now(),
                            DateTimePattern.PATTERN_1,
                          ),
                        ),
                        const Spacer(),
                        const TextBuild(
                          title: "Đã tiếp nhận hồ sơ",
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

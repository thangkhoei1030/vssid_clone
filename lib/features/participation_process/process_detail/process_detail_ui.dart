import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/core/utils/extension/device_ratio.dart';
import 'package:vssid/features/src_feature.dart';

class ProcessDetailPage extends GetView<ProcessDetailController>
    with GetViewLoading {
  const ProcessDetailPage({super.key});

  @override
  ProcessDetailController get controller => Get.put(ProcessDetailController());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
        showAppBar: true,
        customAppBar: UtilWidget.customAppBar(
          context,
          leading: SimpleButton(
            onPressed: () {
              Get.back();
            },
            child: UtilWidget.appBarIcon(Icons.arrow_back_ios_new),
          ),
          title: TextBuild(
            title: "Chi tiết".toUpperCase(),
            textColor: Colors.white,
            fontSize: AppDimens.sizeTextLarge,
          ),
        ),
        child: loadingWidget(
          isShowLoading: controller.isShowLoading,
          child: () => SingleChildScrollView(
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: TextBuild(
                            title:
                                "Từ ngày ${controller.processDetailResponse.value?.fromdate ?? ""}"),
                      ),
                      Expanded(
                        child: TextBuild(
                            title:
                                "Đến ngày ${controller.processDetailResponse.value?.todate ?? ""} "),
                      ),
                    ],
                  ),
                ),
                UtilWidget.sizedBoxPadding,
                Column(
                  children: [
                    CardBuilder(
                      alignment: Alignment.centerLeft,
                      backgroundColor: const Color.fromRGBO(83, 118, 176, 1),
                      paddingModel: const PaddingModel(
                          paddingAll: AppDimens.paddingSmall),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _textSpan(
                            "Chức vụ: ",
                            controller.processDetailResponse.value?.job ?? "",
                          ),
                          _textSpan(
                            "Đơn vị công tác: ",
                            controller.processDetailResponse.value?.workUnit ??
                                "",
                          ),
                          _textSpan(
                            "Nơi làm việc: ",
                            controller.processDetailResponse.value?.workplace ??
                                "",
                          ),
                          _textSpan(
                            "Loại tiền: ",
                            "VND",
                          ),
                        ],
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: CardBuilder(
                              paddingModel: PaddingModel(
                                paddingVerical:
                                    AppDimens.paddingVerySmallest.ratioH,
                                paddingHorizontal:
                                    AppDimens.paddingSmall.ratioW,
                              ),
                              isBorder: true,
                              borderColor: Colors.blue,
                              child: const TextBuild(
                                title: "Tiền lương đóng BHXH",
                              ),
                            ),
                          ),
                          Expanded(
                            child: CardBuilder(
                              paddingModel: PaddingModel(
                                paddingVerical:
                                    AppDimens.paddingVerySmall.ratioH,
                                paddingHorizontal:
                                    AppDimens.paddingVerySmall.ratioW,
                              ),
                              isBorder: true,
                              border: Border(
                                top: BorderSide(
                                  color: context.onSurfaceColor,
                                ),
                                right: BorderSide(
                                  color: context.onSurfaceColor,
                                ),
                                bottom: BorderSide(
                                  color: context.onSurfaceColor,
                                ),
                              ),
                              borderColor: Colors.blue,
                              alignment: Alignment.centerRight,
                              child: TextBuild(
                                title: CurrencyUtils.formatCurrencyForeign(
                                  controller
                                      .processDetailResponse.value?.salary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CardBuilder(
                            paddingModel: PaddingModel(
                              paddingVerical: AppDimens.paddingVerySmall.ratioH,
                              paddingHorizontal:
                                  AppDimens.paddingVerySmall.ratioW,
                            ),
                            isBorder: true,
                            borderColor: Colors.blue,
                            border: Border(
                              left: BorderSide(
                                color: context.onSurfaceColor,
                              ),
                              right: BorderSide(
                                color: context.onSurfaceColor,
                              ),
                              bottom: BorderSide(
                                color: context.onSurfaceColor,
                              ),
                            ),
                            child: const TextBuild(title: "Mức lương"),
                          ),
                        ),
                        Expanded(
                          child: CardBuilder(
                            alignment: Alignment.centerRight,
                            paddingModel: PaddingModel(
                              paddingVerical: AppDimens.paddingVerySmall.ratioH,
                              paddingHorizontal:
                                  AppDimens.paddingVerySmall.ratioW,
                            ),
                            isBorder: true,
                            border: Border(
                              right: BorderSide(
                                color: context.onSurfaceColor,
                              ),
                              bottom: BorderSide(
                                color: context.onSurfaceColor,
                              ),
                            ),
                            borderColor: Colors.blue,
                            child: TextBuild(
                              title: CurrencyUtils.formatCurrencyForeign(
                                controller
                                    .processDetailResponse.value?.basicSalary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ).paddingAll(AppDimens.defaultPadding),
          ),
        ));
  }

  Widget _textSpan(String text1, String text2) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: text1,
        children: [
          TextSpan(
              text: text2,
              style: Get.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: AppDimens.sizeTextDefault,
              ))
        ],
      ),
    );
  }
}

import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
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
        showBackButton: true,
        title: TextBuild(
          title: "Chi tiết",
          // textColor: Colors.white,
          fontSize: AppDimens.sizeTextMedium,
        ),
        // backgroundColorAppBar: Colors.blue,
        child: loadingWidget(
          isShowLoading: controller.isShowLoading,
          child: () => SingleChildScrollView(
            child: Column(
              children: [
                Row(
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
                UtilWidget.sizedBoxPadding,
                Column(
                  children: [
                    CardBuilder(
                      backgroundColor: Colors.blue,
                      paddingModel: const PaddingModel(
                          paddingAll: AppDimens.paddingSmall),
                      child: Column(
                        children: [
                          UtilWidget.rowInfo("Chức vụ",
                              controller.processDetailResponse.value?.job ?? "",
                              showDivider: false),
                          UtilWidget.rowInfo(
                              "Đơn vị công tác",
                              controller
                                      .processDetailResponse.value?.workUnit ??
                                  "",
                              showDivider: false),
                          UtilWidget.rowInfo(
                              "Nơi làm việc",
                              controller
                                      .processDetailResponse.value?.workplace ??
                                  "",
                              showDivider: false),
                          UtilWidget.rowInfo("Loại tiền", "VND",
                              showDivider: false),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: CardBuilder(
                            isBorder: true,
                            borderColor: Colors.blue,
                            child: TextBuild(title: "Tiền lương đóng BHXH"),
                          ),
                        ),
                        Expanded(
                          child: CardBuilder(
                            isBorder: true,
                            borderColor: Colors.blue,
                            child: TextBuild(
                              title: CurrencyUtils.formatCurrencyForeign(
                                controller.processDetailResponse.value?.salary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: CardBuilder(
                            isBorder: true,
                            borderColor: Colors.blue,
                            child: TextBuild(title: "Mức lương"),
                          ),
                        ),
                        Expanded(
                          child: CardBuilder(
                            isBorder: true,
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
}

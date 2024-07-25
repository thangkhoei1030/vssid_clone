import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidget {
  static Widget get loadingThreeDots =>
      LoadingAnimationWidget.threeRotatingDots(color: Colors.red, size: 25);

  static Widget get loadingBouncing =>
      LoadingAnimationWidget.bouncingBall(color: Colors.red, size: 25);
}

mixin GetViewLoading {
  static const String dataPending = "Đang lấy dữ liệu";
  Widget loadingWidget({
    required RxBool isShowLoading,
    required WidgetCallback child,
    bool isShowTitleLoading = false,
    String title = dataPending,
  }) {
    return Obx(
      () => isShowLoading.value
          ? const Center(
              child: AnimationDialog(
                animationDialogType: AnimationDialogType.loading,
                height: 50,
                width: 50,
              ),
            )
          : child(),
    );
  }
}

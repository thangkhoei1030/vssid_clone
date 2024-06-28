import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vssid/core/src_core.dart';

enum ToastStatus { error, success, warning }

Future<void> showToast(String message,
    {Toast toastLength = Toast.LENGTH_SHORT,
    ToastGravity gravity = ToastGravity.BOTTOM,
    required ToastStatus toastStatus}) async {
  // ignore: no_leading_underscores_for_local_identifiers
  Color? _getBackgroundColorToast() {
    switch (toastStatus) {
      case ToastStatus.success:
        return Colors.green;
      case ToastStatus.warning:
        return Colors.yellow;
      case ToastStatus.error:
        return Colors.red;
      default:
        return null;
    }
  }

  await Fluttertoast.showToast(
    msg: FunctionUtils.unicodeDecode(message),
    backgroundColor: _getBackgroundColorToast(),
    textColor: Colors.white,
    fontSize: AppDimens.sizeTextDefault,
    toastLength: toastLength,
    gravity: gravity,
  );
}

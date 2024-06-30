import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class LoginController extends BaseGetxController {
  final TextEditingController codeBHXH =
      TextEditingController(text: APP_DATA.get(AppConst.keyUserName) ?? "");

  final TextEditingController password =
      TextEditingController(text: "12345678");

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final LoginRepository loginRepository;

  void biometricsLogin();

  void login();
}

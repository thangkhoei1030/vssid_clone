import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class LoginController extends BaseGetxController {
  final TextEditingController codeBHXH = TextEditingController();

  final TextEditingController password = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final LoginRepository loginRepository;

  void biometricsLogin();

  void login();
}

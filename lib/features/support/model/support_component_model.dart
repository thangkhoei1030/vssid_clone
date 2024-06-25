// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SupportComponentItemModel {
  final String content;

  final IconData iconData;

  final Function()? function;
  const SupportComponentItemModel({
    required this.content,
    required this.iconData,
    this.function,
  });
}

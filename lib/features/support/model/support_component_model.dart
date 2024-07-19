// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:vssid/gen/assets.gen.dart';

class SupportComponentItemModel {
  final String content;

  final IconData? iconData;

  final SvgGenImage? pathSVG;

  final AssetGenImage? image;

  final Function()? function;
  const SupportComponentItemModel({
    required this.content,
    this.iconData,
    this.function,
    this.pathSVG,
    this.image,
  });
}

import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SupportValueConst {
  static const List<SupportComponentItemModel> listComponent = [
    SupportComponentItemModel(
        content: SupportString.tutorial, iconData: Icons.edit_document),
    SupportComponentItemModel(
        content: SupportString.chatBot, iconData: Icons.edit_document),
    SupportComponentItemModel(
        content: SupportString.hotline, iconData: Icons.engineering),
    SupportComponentItemModel(
        content: SupportString.email, iconData: Icons.email),
    SupportComponentItemModel(
        content: SupportString.question, iconData: Icons.question_answer),
    SupportComponentItemModel(
        content: SupportString.feedback, iconData: Icons.feedback),
  ];
}

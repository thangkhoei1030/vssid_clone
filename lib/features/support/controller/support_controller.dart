import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class SupportController extends GetxController {
  final List<SupportComponentItemModel> listComponent = [
    SupportComponentItemModel(
        content: SupportString.tutorial,
        iconData: Icons.edit_document,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.chatBot,
        iconData: Icons.edit_document,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.hotline,
        iconData: Icons.engineering,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.email,
        iconData: Icons.email,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.question,
        iconData: Icons.question_answer,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.feedback,
        iconData: Icons.feedback,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
  ];
}

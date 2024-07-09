import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class SupportController extends GetxController {
  final List<SupportComponentItemModel> listComponent = [
    SupportComponentItemModel(
        content: SupportString.tutorial,
        iconData: Iconsax.book,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.chatBot,
        pathSVG: Assets.svg.chatbot,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.hotline,
        iconData: Iconsax.call_calling,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.email,
        iconData: Iconsax.sms,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.question,
        pathSVG: Assets.svg.messages,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.feedback,
        iconData: Iconsax.sms_tracking,
        function: () {
          UrlService().launchUrl(UriType.tutorial);
        }),
  ];
}

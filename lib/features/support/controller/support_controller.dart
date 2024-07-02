import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';

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
        iconData: Iconsax.safe_home,
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
        iconData: Iconsax.message,
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

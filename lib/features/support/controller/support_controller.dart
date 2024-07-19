import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class SupportController extends GetxController {
  final List<SupportComponentItemModel> listComponent = [
    SupportComponentItemModel(
        content: SupportString.tutorial,
        image: Assets.images.srcImagesHotrohdsd,
        function: () {
          // UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.chatBot,
        image: Assets.images.srcImagesNewIconChatbot,
        function: () {
          // UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.hotline,
        image: Assets.images.srcImagesNewIconTongdai,
        function: () {
          // UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.email,
        image: Assets.images.srcImagesNewIconEmail,
        function: () {
          // UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.question,
        image: Assets.images.srcImagesNewIconCauhoi,
        function: () {
          // UrlService().launchUrl(UriType.tutorial);
        }),
    SupportComponentItemModel(
        content: SupportString.feedback,
        image: Assets.images.srcImagesPhananhkiennghi,
        function: () {
          // UrlService().launchUrl(UriType.tutorial);
        }),
  ];
}

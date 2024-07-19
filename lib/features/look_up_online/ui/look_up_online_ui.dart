import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/features/src_feature.dart';
import 'package:vssid/gen/assets.gen.dart';

class LookUpOnline extends StatelessWidget {
  const LookUpOnline({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpBHXH(),
                  ),
                  image: Assets.images.srcImagesNewTracuuMaso,
                  serviceName: LookUpOnlineString.lookUpCodeBHXH,
                ),
              ),
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(() => const LookUpOrganBHXH()),
                  image: Assets.images.srcImagesNewTracuuCoquan,
                  serviceName: LookUpOnlineString.lookUpOrganBHXH,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpCskcbQuitJob(),
                  ),
                  image: Assets.images.srcImagesNewTracuuCskcb2,
                  serviceName: LookUpOnlineString.lookUpCSKCBQuitJob,
                ),
              ),
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpCskcbBhyt(),
                  ),
                  image: Assets.images.srcImagesNewTracuuCskcb,
                  serviceName: LookUpOnlineString.lookUpCSKCBHeadling,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpOrganJoin(),
                  ),
                  image: Assets.images.srcImagesNewTracuuDonvi,
                  serviceName: LookUpOnlineString.lookUpMemberJoinBHXH,
                ),
              ),
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpReceiveBhxhBhyt(),
                  ),
                  image: Assets.images.srcImagesNewTracuuDiemthu,
                  serviceName: LookUpOnlineString.lookUpMemberReceiverBHXH,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

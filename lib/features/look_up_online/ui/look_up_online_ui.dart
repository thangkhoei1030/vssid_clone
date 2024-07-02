import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vssid/features/src_feature.dart';

class LookUpOnline extends StatelessWidget {
  const LookUpOnline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: LookUpItem(
                function: () => Get.to(
                  () => const LookUpBHXH(),
                ),
                iconData: Iconsax.scan_barcode,
                serviceName: LookUpOnlineString.lookUpCodeBHXH,
              ),
            ),
            Expanded(
              child: LookUpItem(
                iconData: Iconsax.star,
                serviceName: LookUpOnlineString.lookUpOrganBHXH,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: LookUpItem(
                iconData: Iconsax.medal_star4,
                serviceName: LookUpOnlineString.lookUpCSKCBQuitJob,
              ),
            ),
            Expanded(
              child: LookUpItem(
                iconData: Iconsax.health,
                serviceName: LookUpOnlineString.lookUpCSKCBHeadling,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: LookUpItem(
                iconData: Iconsax.send_2,
                serviceName: LookUpOnlineString.lookUpMemberJoinBHXH,
              ),
            ),
            Expanded(
              child: LookUpItem(
                iconData: Iconsax.medal,
                serviceName: LookUpOnlineString.lookUpMemberReceiverBHXH,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

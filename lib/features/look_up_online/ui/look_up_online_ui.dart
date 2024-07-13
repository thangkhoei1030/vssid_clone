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
                  iconData: Iconsax.scan_barcode,
                  serviceName: LookUpOnlineString.lookUpCodeBHXH,
                ),
              ),
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(() => const LookUpOrganBHXH()),
                  svg: Assets.svg.stateAgencies,
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
                  svg: Assets.svg.certification,
                  serviceName: LookUpOnlineString.lookUpCSKCBQuitJob,
                ),
              ),
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpCskcbBhyt(),
                  ),
                  svg: Assets.svg.periodic,
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
                  svg: Assets.svg.company,
                  serviceName: LookUpOnlineString.lookUpMemberJoinBHXH,
                ),
              ),
              Expanded(
                child: LookUpItem(
                  function: () => Get.to(
                    () => const LookUpReceiveBhxhBhyt(),
                  ),
                  svg: Assets.svg.organization,
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

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
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
                iconData: Icons.qr_code_scanner,
                serviceName: LookUpOnlineString.lookUpCodeBHXH,
              ),
            ),
            Expanded(
              child: LookUpItem(
                iconData: Icons.location_on,
                serviceName: LookUpOnlineString.lookUpOrganBHXH,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: LookUpItem(
                iconData: Icons.qr_code_scanner,
                serviceName: LookUpOnlineString.lookUpCSKCBQuitJob,
              ),
            ),
            Expanded(
              child: LookUpItem(
                iconData: Icons.location_on,
                serviceName: LookUpOnlineString.lookUpCSKCBHeadling,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: LookUpItem(
                iconData: Icons.qr_code_scanner,
                serviceName: LookUpOnlineString.lookUpMemberJoinBHXH,
              ),
            ),
            Expanded(
              child: LookUpItem(
                iconData: Icons.location_on,
                serviceName: LookUpOnlineString.lookUpMemberReceiverBHXH,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

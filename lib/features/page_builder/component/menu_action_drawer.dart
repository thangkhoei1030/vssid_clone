import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

class MenuActionDrawer extends StatelessWidget {
  const MenuActionDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuActionItem(
            funcion: () {},
            icon: Icons.notifications_active_outlined,
            title: PageBuilderString.notification,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.newspaper_outlined,
            title: PageBuilderString.news,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.account_circle_outlined,
            title: PageBuilderString.profileManager,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.list,
            title: PageBuilderString.publicService,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.search,
            title: PageBuilderString.lookUpOnline,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.support_agent_sharp,
            title: PageBuilderString.support,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.settings,
            title: PageBuilderString.settings,
          ),
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          UtilWidget.sizedBoxPaddingHuge,
          MenuActionItem(
            funcion: () {},
            icon: Icons.lock_open_rounded,
            title: PageBuilderString.changePassword,
            isNeedIconSuffix: false,
          ),
          MenuActionItem(
            funcion: () {},
            icon: Icons.power_settings_new_outlined,
            title: PageBuilderString.logout,
            isNeedIconSuffix: false,
          ),
        ],
      ),
    );
  }
}

class MenuActionItem extends StatelessWidget {
  const MenuActionItem({
    super.key,
    required this.funcion,
    required this.icon,
    required this.title,
    this.isNeedIconSuffix = true,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
  });

  final Function() funcion;

  final IconData icon;

  final String title;

  final bool isNeedIconSuffix;

  final Color textColor;

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SimpleButton(
      onPressed: funcion,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: AppDimens.sizeIconMedium,
            ),
            UtilWidget.sizedBoxWidthPadding,
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBuild(
                        title: title,
                        textColor: textColor,
                        fontSize: AppDimens.sizeTextMedium,
                        isBoldText: true,
                      ),
                      const Spacer(),
                      if (isNeedIconSuffix)
                        Icon(
                          Icons.arrow_forward,
                          color: textColor,
                        ),
                    ],
                  ).paddingSymmetric(vertical: AppDimens.paddingSmall),
                  UtilWidget.buildDivider(color: textColor.withOpacity(0.2)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

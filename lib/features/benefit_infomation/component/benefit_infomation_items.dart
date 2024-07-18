import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

enum BenefitInfomationTabType { onetime, odts, monthly, unemployment }

class BenefitInfomationItems extends StatelessWidget {
  final BenefitInfomation benefitInfomation;

  final BenefitInfomationTabType benefitInfomationTabType;

  const BenefitInfomationItems.onetime(this.benefitInfomation, {super.key})
      : benefitInfomationTabType = BenefitInfomationTabType.onetime;

  const BenefitInfomationItems.odts(this.benefitInfomation, {super.key})
      : benefitInfomationTabType = BenefitInfomationTabType.odts;

  const BenefitInfomationItems.monthly(this.benefitInfomation, {super.key})
      : benefitInfomationTabType = BenefitInfomationTabType.onetime;
  const BenefitInfomationItems.unemployment(this.benefitInfomation, {super.key})
      : benefitInfomationTabType = BenefitInfomationTabType.onetime;

  @override
  Widget build(BuildContext context) {
    return CardBuilder(
      radiusModel: const RadiusModel(radiusAll: AppDimens.radius8),
      paddingModel: const PaddingModel(paddingAll: AppDimens.paddingSmall),
      backgroundColor: const Color.fromRGBO(83, 118, 176, 1),
      alignment: Alignment.centerLeft,
      child: _buildBody(),
    );
  }

  Widget _buildBody() {
    switch (benefitInfomationTabType) {
      case BenefitInfomationTabType.unemployment:
      case BenefitInfomationTabType.odts:
        return _odts();
      case BenefitInfomationTabType.onetime:
      case BenefitInfomationTabType.monthly:
      default:
        return _oneTime();
    }
  }

  Widget _oneTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _textSpan(
          "${BenefitInfomationString.soQDHuong}: ",
          "",
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.ngayQDHuonng}: ",
          "",
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.sotien}: ",
          CurrencyUtils.formatCurrencyForeign(benefitInfomation.soTien),
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.tendonvi}: ",
          benefitInfomation.donViDongbh.toString(),
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.sotaikhoan}: ",
          benefitInfomation.cheDo ?? "",
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.tennganhang}: ",
          "",
        ),
      ],
    );
  }

  Widget _odts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _textSpan(
          "${BenefitInfomationString.chedo}: ",
          benefitInfomation.cheDo ?? "",
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          BenefitInfomationString.fromDateToDate(
            benefitInfomation.fromdate ?? "",
            benefitInfomation.todate ?? "",
          ),
          "",
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.sotien}: ",
          CurrencyUtils.formatCurrencyForeign(benefitInfomation.soTien),
        ),
        UtilWidget.sizedBox10,
        _textSpan(
          "${BenefitInfomationString.tendonvi}: ",
          benefitInfomation.donViDongbh.toString(),
        ),
      ],
    );
  }

  Widget _textSpan(String text1, String text2) {
    return RichText(
        textAlign: TextAlign.left,
        text: TextSpan(text: text1, children: [
          TextSpan(
              text: text2,
              style: Get.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: AppDimens.sizeTextDefault,
              ))
        ]));
  }
}

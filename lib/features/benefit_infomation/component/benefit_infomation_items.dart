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
      backgroundColor: Colors.blue,
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
      children: [
        UtilWidget.rowInfo(
          BenefitInfomationString.soQDHuong,
          "",
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.ngayQDHuonng,
          "",
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.sotien,
          CurrencyUtils.formatCurrencyForeign(benefitInfomation.soTien),
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.tendonvi,
          benefitInfomation.donViDongbh.toString(),
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.sotaikhoan,
          "",
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.tennganhang,
          "",
          showDivider: false,
          textColor: Colors.white,
        ),
      ],
    );
  }

  Widget _odts() {
    return Column(
      children: [
        UtilWidget.rowInfo(
          BenefitInfomationString.chedo,
          benefitInfomation.cheDo ?? "",
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.fromDateToDate(
            benefitInfomation.fromdate ?? "",
            benefitInfomation.todate ?? "",
          ),
          "",
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.sotien,
          CurrencyUtils.formatCurrencyForeign(benefitInfomation.soTien),
          showDivider: false,
          textColor: Colors.white,
        ),
        UtilWidget.rowInfo(
          BenefitInfomationString.tendonvi,
          benefitInfomation.donViDongbh.toString(),
          showDivider: false,
          textColor: Colors.white,
        ),
      ],
    );
  }
}

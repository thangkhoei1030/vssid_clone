import 'package:get/get.dart';
import 'package:vssid/core/src_core.dart';
import 'package:flutter/material.dart';
import 'package:vssid/features/src_feature.dart';

abstract class BaseTabPublicService
    extends BaseTabController<PublicServiceResponse, PublicServiceRepository> {
  BaseTabPublicService(this.requestType) {
    super.tabRepository = PublicServiceRepository(this);
  }

  final RequestType requestType;

  @override
  Future<void> onInit() async {
    await super.onInit();
  }

  @override
  Future<void> getData() async {
    await tabRepository.getData(requestType).then(
      (value) {
        if (value.data.isNotEmpty) {
          listResponse.assignAll(value.data);
          listSearchResponse.assignAll(value.data);
        }
      },
    );
  }
}

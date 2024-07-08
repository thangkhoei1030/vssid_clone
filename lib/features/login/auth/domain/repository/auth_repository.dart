import 'package:fpdart/fpdart.dart';
import 'package:vssid/core/base_models/src_base_models.dart';
import 'package:vssid/features/src_feature.dart';

abstract class AuthRepository {
  Future<Either<ServerException, BaseResponse>> login(LoginRequest params);
}

class NoParams {}

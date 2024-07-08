// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/src/either.dart';

import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/login/auth/domain/repository/auth_repository.dart';
import 'package:vssid/features/login/auth/domain/usecases/auth_user_cases.dart';
import 'package:vssid/features/src_feature.dart';

class LoginUsescase implements AuthUsesCase<BaseResponse,LoginRequest> {

  final AuthRepository authRepository;
  LoginUsescase({
    required this.authRepository,
  });

  @override
  Future<Either<ServerException, BaseResponse>> call(LoginRequest request) async {
    return authRepository.login(request);
  }

}

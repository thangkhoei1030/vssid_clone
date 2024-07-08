import 'package:fpdart/src/either.dart';
import 'package:vssid/core/src_core.dart';
import 'package:vssid/features/login/auth/data/datasource/auth_datasource.dart';
import 'package:vssid/features/login/auth/domain/repository/auth_repository.dart';


class AuthRepositoryImp implements AuthRepository {
  final AuthDataSource authDataSource;

  AuthRepositoryImp(this.authDataSource);

  @override
  Future<Either<ServerException, BaseResponse>> login(params) async {
    try {
      final response = await authDataSource.login(params);
      return right(response);
    } on ServerException catch (e) {
      return left(e);
    }
  }
}

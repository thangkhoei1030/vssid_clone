import 'package:fpdart/fpdart.dart';
import 'package:vssid/core/src_core.dart';

abstract class AuthUsesCase<ResponseType, Params> {
  Future<Either<ServerException, ResponseType>> call(Params params);  
}

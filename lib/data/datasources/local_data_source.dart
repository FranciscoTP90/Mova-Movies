import '../../domain/entities/user.dart';

abstract class ILocalDataSource {
  Future<List<User>> getUsersComments();
}

import '../entities/user.dart';

abstract class IUsersRepository {
  Future<List<User>> fetchUsersComments();
}

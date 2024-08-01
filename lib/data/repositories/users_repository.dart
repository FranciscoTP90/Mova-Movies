import '../../domain/domain.dart';
import '../datasources/local_data_source.dart';

class UsersRepository implements IUsersRepository {
  UsersRepository({required ILocalDataSource iLocalDataSource})
      : _iLocalDataSource = iLocalDataSource;

  final ILocalDataSource _iLocalDataSource;

  @override
  Future<List<User>> fetchUsersComments() async {
    try {
      final List<User> users = await _iLocalDataSource.getUsersComments();
      return users;
    } catch (e) {
      throw "$e";
    }
  }
}

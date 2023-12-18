import 'package:silk_app/domain/entities/list_users/list_users.dart';
import 'package:silk_app/domain/entities/user/user.dart';

abstract class AbstractUserRepository {
  Future<(User, int?)> getUser(String id);
  Future<(ListUsers, int?)> getListUsers(int page);
}

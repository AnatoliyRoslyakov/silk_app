import 'package:go_router/go_router.dart';
import 'package:silk_app/app/pages/home/home_page.dart';
import 'package:silk_app/app/pages/list_users_page/list_user_page.dart';
import 'package:silk_app/app/pages/user_page.dart/user_page.dart';
import 'package:silk_app/app/router/abstract_routes_info.dart';
import 'package:silk_app/app/router/mobile_routes.dart';

class MobileRoutesInfo implements AbstractRoutesInfo {
  @override
  String get initialRoute => MobileRoutes.home.path;

  @override
  List<RouteBase> get routes => <RouteBase>[
        GoRoute(
          path: MobileRoutes.home.path,
          name: MobileRoutes.home.name,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: MobileRoutes.user.path,
          name: MobileRoutes.user.name,
          builder: (context, state) {
            return const UserPage();
          },
        ),
        GoRoute(
          path: MobileRoutes.list.path,
          name: MobileRoutes.list.name,
          builder: (context, state) {
            return const ListUsersPage();
          },
        ),
      ];
}

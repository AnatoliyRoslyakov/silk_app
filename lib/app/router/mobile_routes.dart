// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

enum MobileRoutes {
  home,
  user,
  list,
  ;

  static MobileRoutes? fromName(String? name) {
    return MobileRoutes.values.firstWhereOrNull(
      (MobileRoutes element) => element.name == name,
    );
  }
}

extension MobileRoutesExt on MobileRoutes {
  String get path => '/$name';
  // String withId(String id) => '/$name/$id';
}

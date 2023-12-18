import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:silk_app/app/router/mobile_routes.dart';
import 'package:silk_app/app/theme/app_colors.dart';
import 'package:silk_app/app/theme/app_text_style.dart';
import 'package:silk_app/domain/entities/user/user.dart';
import 'package:silk_app/domain/state/user_bloc.dart';

class UserCard extends StatelessWidget {
  final Data user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          context.read<UserBloc>().add(InitUserEvent(user.id.toString()));
          context.go(MobileRoutes.user.path);
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.mainElement),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.network(
                      user.avatar ?? '',
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(user.firstName ?? '[eq]',
                                style: AppTextStyle.mont16breg),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(user.lastName ?? '',
                                style: AppTextStyle.mont16breg),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.email ?? '',
                              style: AppTextStyle.mont16breg,
                            ),
                            Text(
                              'ID: ${user.id}',
                              style: AppTextStyle.mont16breg,
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

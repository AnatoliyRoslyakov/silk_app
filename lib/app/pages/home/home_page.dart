import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart'
    as clean;
import 'package:silk_app/app/pages/home/home_controller.dart';
import 'package:silk_app/app/theme/app_colors.dart';
import 'package:silk_app/app/theme/app_text_style.dart';
import 'package:silk_app/app/widgets/search_button.dart';

class HomePage extends clean.View {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageView();
}

class HomePageView extends clean.ViewState<HomePage, HomeController> {
  HomePageView() : super(HomeController());

  @override
  Widget get view => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: clean.ControlledWidgetBuilder<HomeController>(
                builder: (context, controller) {
              return Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: controller.textController,
                      textAlignVertical: TextAlignVertical.center,
                      style: AppTextStyle.mont16breg,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[1-9]$|^1[0-9]$|^20$|^30$')),
                      ],
                      decoration: InputDecoration(
                        labelText: 'от 1 до 30',
                        labelStyle: AppTextStyle.mont16breg,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: AppColors.mainBackground,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        suffixIcon: SearchButton(
                          icon: Icons.search,
                          onPressed: () {
                            if (controller.textController.text.isNotEmpty) {
                              controller.getUser(context);
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SearchButton(
                    icon: Icons.list,
                    onPressed: () {
                      controller.getList(context);
                    },
                  ),
                ],
              );
            }),
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexel_tok/config/assets/assets.dart';
import 'package:pexel_tok/config/assets/texts.dart';
import 'package:pexel_tok/config/constants/dimensions.dart';
import 'package:pexel_tok/config/style/colors.dart';
import 'package:pexel_tok/config/style/text_styles.dart';
import 'package:pexel_tok/presentation/bloc/theme/theme_bloc.dart';
import 'package:pexel_tok/presentation/router/app_router.dart';
import 'package:pexel_tok/presentation/widgets/common_button_widget.dart';
import 'package:pexel_tok/presentation/widgets/gap.dart';
import 'package:pexel_tok/presentation/widgets/theme_button_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: AppPadding.commonPadding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: ThemeButtonWidget(),
                ),
                Column(
                  children: [
                    //TODO REPLACE THIS WITH RIVE ANIMATION
                    BlocBuilder<ThemeBloc, ThemeState>(
                      builder: (context, state) {
                        return Container(
                          height: height * 0.15,
                          width: height * 0.15,
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(state.isDarkMode
                                  ? AppImageAssets.logoDark
                                  : AppImageAssets.logoLight),
                            ),
                          ),
                        );
                      },
                    ),
                    const Gap(H: 10),
                    Text(
                      AppTextAssets.appName,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                          ),
                    ),
                    const Gap(H: 10),
                    Text(
                      AppTextAssets.landingDescription,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: AppFontSize.landingDescription,
                            fontStyle: FontStyle.italic,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const Gap(H: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Hero(
                        tag: "initial_preference",
                        child: CommonButtonWidget(
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppTextAssets.exploreNowButtonText,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Gap(W: 10),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: AppColors.white,
                                ),
                              ]),
                          ontap: () {
                            AppNavigator.push(
                              context: context,
                              screenName: AppRouter.SELECT_PREFERENCE_SCREEN,
                            );
                          },
                        ),
                      ),
                    ),
                    const Gap(H: 40),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

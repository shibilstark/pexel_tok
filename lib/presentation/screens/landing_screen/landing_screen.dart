import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexel_tok/config/assets/assets.dart';
import 'package:pexel_tok/config/constants/dimensions.dart';
import 'package:pexel_tok/config/style/colors.dart';
import 'package:pexel_tok/config/style/text_styles.dart';
import 'package:pexel_tok/presentation/bloc/theme/theme_bloc.dart';
import 'package:pexel_tok/presentation/widgets/gap.dart';

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
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: const Icon(Icons.sunny),
                          onPressed: () {
                            context
                                .read<ThemeBloc>()
                                .add(ChangeTheme(!state.isDarkMode));
                          }),
                    ),
                    Column(
                      children: [
                        Container(
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
                        ),
                        const Gap(H: 10),
                        Text(
                          "PixelTok",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -1,
                                  ),
                        ),
                        const Gap(H: 10),
                        Text(
                          "Discover a world of visual delight with our free image and photo surf app. Explore, share, and download stunning visuals instantly!",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: AppFontSize.landingDescription,
                                    fontStyle: FontStyle.italic,
                                  ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

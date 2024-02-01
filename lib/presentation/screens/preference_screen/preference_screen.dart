// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:pexel_tok/config/assets/texts.dart';
import 'package:pexel_tok/config/style/colors.dart';
import 'package:pexel_tok/config/style/text_styles.dart';
import 'package:pexel_tok/presentation/router/app_router.dart';
import 'package:pexel_tok/presentation/widgets/common_button_widget.dart';
import 'package:pexel_tok/presentation/widgets/gap.dart';
import 'package:pexel_tok/presentation/widgets/theme_button_widget.dart';

class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({super.key});

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  late ValueNotifier<List<String>> selectedContents;

  @override
  void initState() {
    selectedContents = ValueNotifier([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> preferredContents = [
      "Nature",
      "Mountain",
      "Adventure",
      "Sky",
      "Ocean View",
      "Fashion",
      "Buildings & Towns",
      "Village View",
      "Cars",
      "Animals",
      "Cute Pets",
      "City Night",
      "Landscape View",
      "Dragon",
      "Airport",
      "World Map",
      "Black & White",
      "Colourful",
      "Beautiful Houses",
    ];

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ThemeButtonWidget(),
                  ),
                ),
                Column(
                  children: [
                    const Gap(H: 20),
                    Hero(
                      tag: "initial_preference",
                      child: Text(
                        AppTextAssets.preferenceTitle,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.theme,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    const Gap(H: 40),
                    ValueListenableBuilder<List<String>>(
                        valueListenable: selectedContents,
                        builder: (context, value, _) {
                          return Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 15,
                            spacing: 15,
                            children: List.generate(
                                preferredContents.length,
                                (index) => PreferredContentTileWidget(
                                      preferredContent:
                                          preferredContents[index],
                                      isPresent: selectedContents.value.any(
                                          (element) =>
                                              element ==
                                              preferredContents[index]),
                                      selectedContents: selectedContents,
                                    )),
                          );
                        }),
                    const Gap(H: 50),
                    ValueListenableBuilder<List<String>>(
                        valueListenable: selectedContents,
                        builder: (context, value, _) {
                          return Column(
                            children: [
                              Text(
                                "${value.length} / 3",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: AppFontSize.large,
                                        fontStyle: FontStyle.italic,
                                        color: value.length == 3
                                            ? Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .color!
                                            : Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .color!),
                              ),
                              const Gap(H: 20),
                              Text(
                                "Please select 3 of them",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: AppFontSize.verySmall,
                                        fontStyle: FontStyle.italic,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .color!),
                              ),
                              const Gap(H: 40),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Hero(
                                  tag: "to_dahsbord_appbar",
                                  flightShuttleBuilder: (flightContext,
                                          animation,
                                          flightDirection,
                                          fromHeroContext,
                                          toHeroContext) =>
                                      const Icon(
                                    Icons.rocket,
                                    color: AppColors.overlay,
                                  ),
                                  child: CommonButtonWidget(
                                    backgroundColor: value.length == 3
                                        ? AppColors.theme
                                        : Colors.transparent,
                                    child: Text(
                                      "Get Started",
                                      style: TextStyle(
                                        color: value.length == 3
                                            ? AppColors.white
                                            : Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .color!
                                                .withOpacity(0.4),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ontap: () {
                                      if (value.length == 3) {
                                        AppNavigator.pushAndRemoveUntil(
                                          context: context,
                                          screenName: AppRouter.DASH_BOARD,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
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

class PreferredContentTileWidget extends StatelessWidget {
  const PreferredContentTileWidget({
    super.key,
    required this.preferredContent,
    required this.selectedContents,
    required this.isPresent,
  });

  final String preferredContent;
  final ValueNotifier<List<String>> selectedContents;
  final bool isPresent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (selectedContents.value.length < 3) {
          if (isPresent) {
            selectedContents.value.remove(preferredContent);
          } else {
            selectedContents.value.add(preferredContent);
          }
        } else {
          selectedContents.value.remove(preferredContent);
        }

        selectedContents.notifyListeners();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        decoration: BoxDecoration(
          color: isPresent
              ? AppColors.overlay
              : Theme.of(context).scaffoldBackgroundColor,
          border: Border.all(
            color: AppColors.overlay,
            width: 0.8,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          preferredContent,
          style: TextStyle(
            color: isPresent
                ? AppColors.white
                : Theme.of(context).textTheme.bodySmall!.color!,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

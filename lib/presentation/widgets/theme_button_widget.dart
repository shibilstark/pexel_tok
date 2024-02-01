import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexel_tok/presentation/bloc/theme/theme_bloc.dart';

import '../../config/style/colors.dart';

class ThemeButtonWidget extends StatelessWidget {
  const ThemeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return IconButton(
            icon: Icon(
              state.isDarkMode ? Icons.sunny : Icons.mode_night_outlined,
              color: state.isDarkMode ? AppColors.white : AppColors.black,
            ),
            onPressed: () {
              context.read<ThemeBloc>().add(ChangeTheme(!state.isDarkMode));
            });
      },
    );
  }
}

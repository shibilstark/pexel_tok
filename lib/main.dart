import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pexel_tok/config/style/themes.dart';
import 'package:pexel_tok/injector/injecter.dart';
import 'package:pexel_tok/presentation/bloc/theme/theme_bloc.dart';
import 'package:pexel_tok/presentation/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ThemeBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 900),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          context.read<ThemeBloc>().add(const LoadTheme());

          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: state.isDarkMode ? AppThemes.dark : AppThemes.light,
                onGenerateRoute: AppRouter.ongeneratedRoute,
                initialRoute: AppRouter.LANDING_SCREEN,
              );
            },
          );
        },
      ),
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/images/images_repository_impl/images_repository_impl.dart'
    as _i4;
import '../data/videos/videos_repository_impl/videos_repository_impl.dart'
    as _i7;
import '../domain/images/images_repository/images_repository.dart' as _i3;
import '../domain/videos/videos_repository/videos_repository.dart' as _i6;
import '../presentation/bloc/theme/theme_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ImagesRepository>(() => _i4.ImagesRepositoryImpl());
  gh.factory<_i5.ThemeBloc>(() => _i5.ThemeBloc());
  gh.lazySingleton<_i6.VideosRepository>(() => _i7.ImagesRepositoryImpl());
  return get;
}

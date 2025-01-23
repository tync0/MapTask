import 'package:prodata/core/constant/app_const.dart';
import 'package:prodata/export.dart';

abstract final class DependencyInjection {
  static final GetIt getIt = GetIt.instance;

  static Future<void> inject() async {
    getIt.registerLazySingleton(() => AppDatabase());
    getIt.registerLazySingleton(() => AppRouter());
    Bloc.observer = MyBlocObserver();

    //dio
    final Dio dio = Dio()
      ..interceptors.addAll(
        [LogInterceptor(), LoggerInterceptor()],
      )
      ..options.headers.addAll(
        {
          'Content-Type': 'application/json',
          'X-Goog-Api-Key': AppConst.mapApiKey,
          'X-Goog-FieldMask': AppConst.mapFieldMask,
        },
      );

    getIt.registerSingleton<Dio>(dio, instanceName: 'dio');

    //service
    getIt.registerLazySingleton(
      () => MapService(getIt<Dio>(instanceName: 'dio')),
    );

    //repo
    getIt.registerLazySingleton<MapRepo>(
      () => IMapRepo(getIt<MapService>(), getIt<AppDatabase>()),
    );

    //bloc
    getIt.registerLazySingleton<MapBloc>(
      () => MapBloc(getIt<MapRepo>()),
    );
  }
}

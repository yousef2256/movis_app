import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movis_app/core/helpers/cash_helper.dart';
import 'package:movis_app/features/home_features/data/repos/home_repo.dart';
import 'package:movis_app/features/home_features/logic/home_cubit.dart';
import 'package:movis_app/features/layout/logic/layout_cubit.dart';
import '../../features/home_features/data/api/home_api_service.dart';
import '../api/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // dio & ApiService
  Dio dio = await DioFactory.getDio();

  // Register LayoutCubit
  getIt.registerLazySingleton<LayoutCubit>(() => LayoutCubit());

  // home
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerCachedFactory<HomeRepo>(() => HomeRepo(getIt()));

  // cash helper (shared preferences)
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
}

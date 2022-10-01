import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../domain/repositories/exoplanet_repository.dart';
import '../domain/repositories/news_repository.dart';
import '../domain/repositories/spacex_repository.dart';
import '../domain/usecases/get_exoplanet.dart';
import '../domain/usecases/get_news.dart';
import '../domain/usecases/get_spacex.dart';
import '../presentation/bloc/exoplanets_bloc/exoplanet_bloc.dart';
import '../presentation/bloc/news_bloc/news_bloc.dart';
import '../presentation/bloc/spacex_bloc/spacex_bloc.dart';
import 'datasources/exoplanet_remote_datasource.dart';
import 'datasources/news_remote_datasource.dart';
import 'datasources/solar_system_remote_datasource.dart';
import 'datasources/spacex_remote_datasource.dart';
import 'repositories/exoplanet_repository_implementation.dart';
import 'repositories/news_repository_implementation.dart';
import 'repositories/solar_system_repository_implementation.dart';
import '../domain/repositories/system_solar_repository.dart';
import '../domain/usecases/get_system_solar.dart';
import '../presentation/bloc/solar_system_bloc/solar_system_bloc.dart';
import 'repositories/spacex_repository_implementation.dart';

final getIt = GetIt.instance;

void init() {
  // repositories
  getIt.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(newsRemoteDataSource: getIt()),
  );
  getIt.registerLazySingleton<SystemSolarRepository>(
    () => SolarSystemRepositoryImpl(solarSystemRemoteDataSource: getIt()),
  );
  getIt.registerLazySingleton<ExoplanetRepository>(
    () => ExoplanetRepositoryImpl(
      exoplanetRemoteDataSource: getIt(),
    ),
  );
   getIt.registerLazySingleton<SpacexRepository>(
    () => SpacexRepositoryImpl(
      spacexRemoteDataSource: getIt(),
    ),
  );

  // usecases
  getIt.registerLazySingleton(
    () => GetNews(
      getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => GetSystemSolar(
      getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => GetExoplanet(
      getIt(),
    ),
  );
   getIt.registerLazySingleton(
    () => GetSpacex(
      getIt(),
    ),
  );

  // datasources
  getIt.registerLazySingleton<NewsRemoteDataSource>(
    () => NewsRemoteDataSourceImpl(
      client: getIt(),
    ),
  );

  getIt.registerLazySingleton<SolarSystemRemoteDataSource>(
    () => SolarSystemRemoteDataSourceImpl(
      client: getIt(),
    ),
  );

  getIt.registerLazySingleton<ExoplanetRemoteDataSource>(
    () => ExoplanetRemoteDataSourceImpl(
      client: getIt(),
    ),
  );
    getIt.registerLazySingleton<SpacexRemoteDataSource>(
    () => SpacexRemoteDataSourceImpl(
      client: getIt(),
    ),
  );

  // // blocs
  getIt.registerLazySingleton(
    () => NewsBloc(
      getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => SolarSystemBloc(
      getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => ExoplanetBloc(
      getIt(),
    ),
  );
   getIt.registerLazySingleton(
    () => SpacexBloc(
      getIt(),
    ),
  );

  // http
  getIt.registerLazySingleton(
    () => http.Client(),
  );
}

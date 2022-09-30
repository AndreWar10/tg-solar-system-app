import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../domain/repositories/news_repository.dart';
import '../domain/usecases/get_news.dart';
import '../presentation/bloc/news_bloc/news_bloc.dart';
import 'datasources/news_remote_datasource.dart';
import 'datasources/solar_system_remote_datasource.dart';
import 'repositories/news_repository_implementation.dart';
import 'repositories/solar_system_repository_implementation.dart';
import '../domain/repositories/system_solar_repository.dart';
import '../domain/usecases/get_system_solar.dart';
import '../presentation/bloc/solar_system_bloc/solar_system_bloc.dart';

final getIt = GetIt.instance;

void init() {
  // repositories
  getIt.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(newsRemoteDataSource: getIt()),
  );
  getIt.registerLazySingleton<SystemSolarRepository>(
    () => SolarSystemRepositoryImpl(solarSystemRemoteDataSource: getIt()),
  );
  // getIt.registerLazySingleton<DetStatementsRepository>(
  //   () => DetStatementsRepositoryImpl(
  //     detRemoteDataSource: getIt(),
  //   ),
  // );

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
  // getIt.registerLazySingleton(
  //   () => GetDetStatements(
  //     getIt(),
  //   ),
  // );

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

  // getIt.registerLazySingleton<DetStatementsRemoteDataSource>(
  //   () => DetStatementsRemoteDataSourceImpl(
  //     client: getIt(),
  //   ),
  // );

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
  // getIt.registerFactory(
  //   () => DetailStatementBloc(
  //     getIt(),
  //   ),
  // );

  // http
  getIt.registerLazySingleton(
    () => http.Client(),
  );
}

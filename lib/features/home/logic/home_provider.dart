import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';
import '../../../domain/domain.dart';
import 'home_state.dart';

export 'home_state.dart';

part 'home_state_notifier.dart';

// Inyeccion de dependencia
final homeNotifierProvider = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(ref.watch(_moviesRepositoryProvider)));

//Provider para exponer nuestro repositorio
final _moviesRepositoryProvider = Provider<IMoviesRepository>(
    (ref) => MoviesRepository(iRemoteDataSouce: DioDataSource()));

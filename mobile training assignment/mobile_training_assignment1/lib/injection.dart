import 'package:get_it/get_it.dart';
import 'package:mobile_training_assignment1/data/api_service.dart';
import 'package:mobile_training_assignment1/data/repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton(() => ApiService());
  getIt.registerLazySingleton(() => Repository(getIt<ApiService>()));
}

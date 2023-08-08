import 'package:get_it/get_it.dart';
import '../../presentation/cubit/app_cubit.dart';

Future<void> init() async {
  // GetIt.instance
  //     .registerLazySingleton<AuthCubit>(() => AuthCubit()); //LeagueCubit
  GetIt.instance.registerSingleton<AppCubit>(AppCubit());
  // GetIt.instance.registerSingleton<StadiumCubit>(StadiumCubit());
  // GetIt.instance.registerSingleton<LeagueCubit>(LeagueCubit());
}

import 'package:cat_app/provider/CatProvider.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<CatProvider>(CatProvider());
}

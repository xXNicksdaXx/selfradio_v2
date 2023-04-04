import 'package:get_it/get_it.dart';
import 'package:selfradio/data/isar_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<IsarService>(await initIsarService());
}

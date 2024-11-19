import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'app.dart';
import 'app_bloc_observer.dart';
import 'widgets/build_runnable_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  Bloc.observer = AppBlocObserver();
  final runnableApp = buildRunnableApp(
    isWeb: kIsWeb,
    webAppWidth: 450.0,
    app: const MainApp(),
  );

  runApp(runnableApp);
}

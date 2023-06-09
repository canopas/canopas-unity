import 'dart:async';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:go_router/go_router.dart';
import 'package:projectunity/ui/widget/error/error_screen.dart';
import 'package:projectunity/ui/widget/error_snack_bar.dart';
import 'data/configs/app_const.dart';
import 'data/configs/scroll_behavior.dart';
import 'data/configs/theme.dart';
import 'data/bloc/network/network_connection_bloc.dart';
import 'data/bloc/network/network_connection_event.dart';
import 'data/bloc/network/network_connection_state.dart';
import 'data/di/service_locator.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'firebase_options.dart';
import 'ui/navigation/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await configureDependencies();

  ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(flutterErrorDetails);
    String error = flutterErrorDetails.exceptionAsString();
    return ErrorScreen(error: error);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GoRouter _router = getIt<AppRouter>().router;
  final _networkConnectionBloc = getIt<NetworkConnectionBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          _networkConnectionBloc..add(NetworkConnectionObserveEvent()),
      child: GestureDetector(
        onTap: () {
          if (!FocusScope.of(context).hasPrimaryFocus && FocusScope.of(context).focusedChild != null) {
            FocusScope.of(context).focusedChild?.unfocus();
          }
        },
        child: MaterialApp.router(
            title: AppConsts.appTitle,
            scrollBehavior: AppScrollBehaviour(),
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            routerConfig: _router,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            builder: (context, widget) =>
                BlocListener<NetworkConnectionBloc, NetworkConnectionState>(
                  listenWhen: (previous, current) =>
                      current is NetworkConnectionFailureState,
                  listener: (context, state) {
                    if (state is NetworkConnectionFailureState) {
                      String connectionErrorMessage =
                          AppLocalizations.of(context).network_connection_error;
                      showSnackBar(context: context, msg: connectionErrorMessage);
                    }
                  },
                  child: widget,
                )),
      ),
    );
  }
}

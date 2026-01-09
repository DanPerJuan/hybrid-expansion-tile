import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'layers/presentation/app/container_app.dart';

void main() async {
  await _initialize();

  runApp(
    ContainerApp(),
  );
}

/// Initialize application
Future<void> _initialize() async {
  /// Initialize Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  /// Set device orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /// Set system UI mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  /// Initialize EasyLocalization
  await EasyLocalization.ensureInitialized();

  /// Disable EasyLocalization logging
  EasyLocalization.logger.enableBuildModes = [];

  /// Restart animations on hot reload
  Animate.restartOnHotReload = true;
}

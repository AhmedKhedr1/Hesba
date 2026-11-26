import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hesba/Core/services/shared_preferences_singelton.dart';
import 'package:hesba/Core/utils/app_config.dart';
import 'package:hesba/hesba.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: binding);
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GoogleSignIn.instance.initialize(serverClientId:AppConfig.serverClientId,);
  runApp(ProviderScope(child: const Hesba()));
}

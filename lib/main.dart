import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hesba/Core/services/shared_preferences_singelton.dart';
import 'package:hesba/Core/utils/app_keys.dart';
import 'package:hesba/hesba.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await GoogleSignIn.instance.initialize(serverClientId: KserverClientId);
  runApp(ProviderScope(child: const Hesba()));
}

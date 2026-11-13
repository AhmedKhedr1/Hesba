import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hesba/Core/services/shared_preferences_singelton.dart';
import 'package:hesba/hesba.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(ProviderScope(child: const Hesba()));
}

import 'package:al_hadith_task/application/al_hadith_app.dart';
import 'package:al_hadith_task/core/services/local_database/database_provider.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpAppUtils();
  runApp(const AlHadithApp());
}

Future<void> setUpAppUtils() async {
  await DBProvider.db.initDB();
}

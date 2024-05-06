import 'dart:io';

import 'package:al_hadith_task/application/assets_helper/assets_path.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  /// initialize the database
  Future initDB() async {
    final dbPath = await getDatabasesPath();
    String path = join(dbPath, 'hadith_db.db');

    // Check if the database exists in the documents directory
    bool exists = await databaseExists(path);

    // If the database doesn't exist, copy it from assets
    if (!exists) {
      if (kDebugMode) {
        print('Creating a copy from assets');
      }
      try {
        // Create the directory if it doesn't exist
        await Directory(dirname(path)).create(recursive: true);

        // Copy the database from assets
        ByteData data = await rootBundle.load(AssetsPath.database);
        List<int> bytes =
            data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
        await File(path).writeAsBytes(bytes, flush: true);

        if (kDebugMode) {
          print('DB copied');
        }
      } catch (e) {
        if (kDebugMode) {
          print('Error copying database: $e');
        }
      }
    }

    // Open the database
    _database = await openDatabase(path, version: 1);
  }
}

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  // Chemin vers la base de données
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    // Obtenir le chemin de stockage
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'listo_database.db');

    // Créer la base de données
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Créez vos tables ici
    //Création de la table 'task';
    await db.execute('''
      CREATE TABLE tasks (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        categorie TEXT
        description TEXT,
        priority Text,
        isChecked boolean,
        categorieColor Text,
        createAt Date,
        updateAt Date, 
        duDate Date
      )
    ''');
    //Création de la table 'categorie'

    await db.execute('''
      CREATE TABLE categorie (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        categorie TEXT
        categorieColor Text,
        createAt Date,
        updateAt Date
      )
    ''');
    //Création de la table 'profil'
  }
}

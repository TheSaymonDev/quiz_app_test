import 'package:quiz_app_3/model/score_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDbHelper {
  static Future<Database> initDb() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, 'score.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  static Future _onCreate(Database db, int version) async {
    final sql =
    '''CREATE TABLE tbl_score(id INTEGER PRIMARY KEY,score INTEGER)''';
    await db.execute(sql);
  }

  static Future<int> insertScore(ScoreModel scoreModel) async {
    Database db = await MyDbHelper.initDb();
    return await db.insert('tbl_score', scoreModel.toMap());
  }

  static Future<List<ScoreModel>> readContact() async {
    Database db = await MyDbHelper.initDb();
    var scoreModel = await db.query('tbl_score');
    List<ScoreModel> scoreList = scoreModel.isNotEmpty
        ? scoreModel.map((e) => ScoreModel.fromMap(e)).toList()
        : [];
    return scoreList;
  }

  static Future<int> updateContact(ScoreModel scoreModel) async {
    Database db = await MyDbHelper.initDb();
    return await db.update('tbl_score', scoreModel.toMap(),
        where: 'id =?', whereArgs: [scoreModel.id]);
  }

  static Future<int> deleteContact(int id) async {
    Database db = await MyDbHelper.initDb();
    return await db.delete('tbl_score', where: 'id =?', whereArgs: [id]);
  }
}
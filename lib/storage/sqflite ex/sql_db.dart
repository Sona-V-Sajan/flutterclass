
import 'package:sqflite/sqflite.dart' as sql;
//create database
class SQL_Db{
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('datauser', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }

//create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute('CREATE TABLE user (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, username TEXT, password TEXT)');
  }
  static Future<int> AddNewUser(String name, String username, String password) async{
    final db = await SQL_Db.OpenDb();
    final data ={"name":name,"uname":username,"pass":password};
    final id = db.insert("user", data);
    return id;
  }

  static  userFound(String text, String text2) {

  }



}

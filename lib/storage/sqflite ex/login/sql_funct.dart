import 'package:sqflite/sqflite.dart' as sql;

//create database
class SQL_Fun {
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('datauser', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

//create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute('''
  CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,    // Add the email column
    password TEXT
  )
''');

  }

  static Future<int> Addnewuser(String name, String email, String password) async {
    final db = await SQL_Fun.OpenDb();
    final data = {"name": name, "email": email, "password": password};
    final id = db.insert("user", data);
    return id;
  }

  static Future<int> Checknewuser(String email, String pass) async {
    final db = await SQL_Fun.OpenDb();
    final data = {"email": email, "password": pass};
    final id = db.insert("user", data);
    return id;
  }


    // final data = await db.rawQuery(
    //     "SELECT * FROM user WHERE email ='$email' AND password ='$pass'");
    // if (data.isNotEmpty) {
    //   return data;
    // }

}

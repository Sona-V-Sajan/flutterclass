import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sql.dart';

class SQL_functions{
  //create database
  //opendb is created (open or create new db)
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('mycontacts', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE contact(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       cname TEXT,
       cnumber TEXT,
      )""");
  }

  static Future<int> addnewContact(name, number) async{
    final db = await SQL_functions.OpenDb();
    final data={"cname":name,"cnumber":number};
    final id= await db.insert("contact", data,conflictAlgorithm: ConflictAlgorithm.replace);
    return id;


  }

  static Future <List<Map<String,dynamic>>>readContact() async{
    final db = await SQL_functions.OpenDb();
    return db.query("contact",orderBy: "id");
  }
}
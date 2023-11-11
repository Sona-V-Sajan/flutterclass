import 'package:hive/hive.dart';
import 'package:project2/storage/hive/hive_using_adapter_x/model/users.dart';
//singleton class (created using factory  constructor,it have only single instance
//factory constructor return  this instance)
class HiveDB {
  // Private constructor
  HiveDB._internal();

  static HiveDB instance = HiveDB._internal();

  // Factory constructor
  factory HiveDB() {
    return instance;
  }

 Future<List<Users>> getUser() async{
    final db= await Hive.openBox<Users>("users");
    return db.values.toList();
 }

 Future<void> adduser(Users user) async{
   final db= await Hive.openBox<Users>("users");
   db.put(user.id, user);//add email name and password to hive

 }
}




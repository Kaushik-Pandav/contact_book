import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ContactDatabase {
  Future<Database> createDatabase() async {
    var databasepath = await getDatabasesPath();
    String path = join(databasepath, 'contactbook.db');
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE user(id INTEGER PRIMARY KEY AUTOINCREMENT,name VARCHAR(50),number VARCHAR(13))");
    });
    return database;
  }

  void insertNo(Database db, {required String name, required String number}) {
    String sql="INSERT INTO user('name','number') VALUES ('$name','$number')";
    db.rawInsert(sql);
  }
  void updateNo(Database db,{required int id,required String name,required String number})
  {
    String sql="UPDATE user SET name='$name',number='$number' WHERE id='$id'";
    db.rawUpdate(sql);
  }
}

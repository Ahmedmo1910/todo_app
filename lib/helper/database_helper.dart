import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todo_app/models/task_model.dart';

class DatabaseHelper {
  static Database? _db;

  static Future<Database> initDatabase() async {
    if (_db != null) return _db!;

    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'tasks.db');

    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE tasks(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            task TEXT,
            isDone INTEGER
          )
        ''');
      },
    );
    return _db!;
  }

  static Future<int> insertTask(TaskModel task) async {
    final db = await initDatabase();
    return await db.insert(
      'tasks',
      {
        'task': task.task,
        'isDone': task.isDone ? 1 : 0,
      },
    );
  }

  static Future<List<TaskModel>> getTasks() async {
    final db = await initDatabase();
    final List<Map<String, dynamic>> allTasks = await db.query('tasks');

    return List.generate(allTasks.length, (i) {
      return TaskModel(
        task: allTasks[i]['task'],
        isDone: allTasks[i]['isDone'] == 1,
      );
    });
  }

  static Future<int> updateTask(TaskModel task, int id) async {
    final db = await initDatabase();
    return await db.update(
      'tasks',
      {
        'task': task.task,
        'isDone': task.isDone ? 1 : 0,
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<int> deleteTask(int id) async {
    final db = await initDatabase();
    return await db.delete('tasks', where: 'id = ?', whereArgs: [id]);
  }
}

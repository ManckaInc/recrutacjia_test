import 'package:hive/hive.dart';

  void hiveDelete() async {

    var box = await Hive.openBox('Keys');
    await box.delete('token');
    await box.delete('jwtSecret');
  }

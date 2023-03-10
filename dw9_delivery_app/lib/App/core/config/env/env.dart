import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;
  // Avoid self isntance
  Env._();
  static Env get i{
    _instance??=  Env._();
    return _instance!;
   }

   Future<void> load() => dotenv.load();

  //para uso de futuro remote config
   String? operator [](String key) => dotenv.env[key];
}
import 'package:flutter_bloc_pattern/src/models/item_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "ItemModelEntity") {
      return ItemModelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}
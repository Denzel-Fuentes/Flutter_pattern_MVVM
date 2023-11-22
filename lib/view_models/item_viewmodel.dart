import 'package:flutter/foundation.dart';

import '../models/item_model.dart';

class ItemViewModel extends ChangeNotifier {
  List<ItemModel> _items = [];

  List<ItemModel> get items => _items;

  void addItem(String title) {
    if (title.isNotEmpty) {
      _items.add(ItemModel(title)); 
      notifyListeners(); 
    }
  }
}

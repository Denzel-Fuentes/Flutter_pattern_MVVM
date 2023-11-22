import 'package:flutter/foundation.dart';

import '../models/item_model.dart';

class ItemViewModel extends ChangeNotifier {
  List<ItemModel> _items = [];
  final ValueNotifier<List<ItemModel>> _itemsNotifier = ValueNotifier([]);

  List<ItemModel> get items => _items;
  ValueNotifier<List<ItemModel>> get itemsNotifier => _itemsNotifier;

  void addItem(String title) {
    if (title.isNotEmpty) {
      _items.add(ItemModel(title)); 
      _itemsNotifier.value =List.from(_items); 
    }
  }
}

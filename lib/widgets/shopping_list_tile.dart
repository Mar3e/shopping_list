import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';

class ShoppingListTile extends StatelessWidget {
  const ShoppingListTile(
    this.groceryItem, {
    super.key,
  });

  final GroceryItem groceryItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 24.0,
        height: 24.0,
        color: groceryItem.category.color,
      ),
      title: Text(groceryItem.name),
      trailing: Text('${groceryItem.quantity}'),
    );
  }
}

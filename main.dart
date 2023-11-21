import 'package:flutter/material.dart';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CategoryRow(categoryName: 'Appetizers', items: ['Item 1', 'Item 2', 'Item 3']),
            CategoryRow(categoryName: 'Main Course', items: ['Item 4', 'Item 5', 'Item 6']),
            CategoryRow(categoryName: 'Desserts', items: ['Item 7', 'Item 8', 'Item 9']),
          ],
        ),
      ),
    );
  }
}

class CategoryRow extends StatelessWidget {
  final String categoryName;
  final List<String> items;

  CategoryRow({required this.categoryName, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press for the menu item

                  },
                  child: Text(item),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

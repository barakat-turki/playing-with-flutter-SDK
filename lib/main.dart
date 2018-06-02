import "package:flutter/material.dart";
import 'Category.dart';

void main() {
  runApp(UnitConverterApp());
}

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Unit Convertor",
        home: Scaffold(
          backgroundColor: Colors.green[100],
          body: Category(
              name: _categoryName,
              color: _categoryColor,
              iconLocation: _categoryIcon,
            ),
        )
    );
  }
}
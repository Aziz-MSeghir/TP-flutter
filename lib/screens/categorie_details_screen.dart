// category_details_screen.dart
import 'package:flutter/material.dart';
import 'package:store/widgets/product-details/categorie_details_widget.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final String category;

  const CategoryDetailsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryDetailsWidget(category),
    );
  }
}

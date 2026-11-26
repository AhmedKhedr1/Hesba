import 'package:flutter/material.dart';
import 'package:hesba/features/home/data/category_model.dart';
import 'package:hesba/features/home/presentation/views/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.categories});
  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,

        itemBuilder: (context, index) {
          return CategoryItem(categoryModel: categories[index]);
        },
      ),
    );
  }
}

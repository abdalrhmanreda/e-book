import 'package:e_book/ui/features/home/components/build_grid_view.dart';
import 'package:flutter/material.dart';

class SeeMoreScreen extends StatelessWidget {
  const SeeMoreScreen({super.key, required this.list, required this.title});
  final List list;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BuildGridView(
        list: list,
        shrinkWrap: false,
        scrollPhysics: const BouncingScrollPhysics(),
        childAspectRatio: .66,
      ),
    );
  }
}

import 'package:e_book/ui/features/home/components/title_and_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../controllers/books_cubit.dart';

Column buildAllBooks(BuildContext context) {
  return Column(
    children: [
      TitleAndListView(
          title: S.of(context).best, list: BooksCubit.get(context).bestSeller),
      TitleAndListView(
          title: S.of(context).topAuthor,
          list: BooksCubit.get(context).topAuthor),
      TitleAndListView(
          title: S.of(context).healthy, list: BooksCubit.get(context).healthy),
      TitleAndListView(
          title: S.of(context).programming,
          list: BooksCubit.get(context).programming),
    ],
  );
}

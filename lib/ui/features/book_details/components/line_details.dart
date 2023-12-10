import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/components/custom_divider.dart';
import '../../../../generated/l10n.dart';
import 'details_item.dart';

Row buildLineDetails(BuildContext context, BookModel bookModel) {
  DateTime dateTime = DateTime.parse(bookModel.volumeInfo.publishedDate!);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildDetailsItem(
        context: context,
        details: bookModel.volumeInfo.pageCount.toString(),
        title: S.of(context).pageCount,
      ),
      myDivider(2, 40.h),
      buildDetailsItem(
        context: context,
        details: bookModel.volumeInfo.language.toString(),
        title: S.of(context).language,
      ),
      myDivider(2, 40.h),
      buildDetailsItem(
        context: context,
        details: DateFormat('yyyy').format(dateTime),
        title: S.of(context).date,
      ),
    ],
  );
}

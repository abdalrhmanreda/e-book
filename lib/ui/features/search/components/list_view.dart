import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/config/colors/app_colors.dart';
import 'package:e_book/ui/features/book_details/screens/book_details.dart';
import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/components/custom_navigatation.dart';
import '../../../../core/constant/app_constant.dart';

InkWell buildSearchListViewItem({
  required BuildContext context,
  required BookModel bookModel,
}) {
  return InkWell(
    onTap: () {
      CustomNavigation.navigateTo(
          context, BookDetailsScreen(bookModel: bookModel));
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: AppConstant.deviceHeight(context) / 5,
          width: AppConstant.deviceWidth(context) / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                  bookModel.volumeInfo.imageLinks.thumbnail),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${bookModel.volumeInfo.title}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              bookModel.volumeInfo.subtitle ?? ' ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(5),
            Text(
              bookModel.volumeInfo.description ?? ' ',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(AppColors.kGreyColor),
                  ),
            ),
            const Gap(5),
            Text(
              bookModel.volumeInfo.authors?.first.toString() ?? ' ',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(AppColors.kGreyColor),
                  ),
            ),
          ],
        )),
      ],
    ),
  );
}

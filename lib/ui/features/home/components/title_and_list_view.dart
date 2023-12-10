import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/core/components/custom_navigatation.dart';
import 'package:e_book/core/components/custom_text_button.dart';
import 'package:e_book/ui/features/home/screens/see_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/constant/app_constant.dart';
import '../../book_details/screens/book_details.dart';

class TitleAndListView extends StatelessWidget {
  const TitleAndListView({
    super.key,
    required this.title,
    required this.list,
  });
  final String title;
  final List list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18.sp),
            ),
            CustomTextButton(
              onPressed: () {
                CustomNavigation.navigateTo(
                    context, SeeMoreScreen(list: list, title: title));
              },
              text: 'See all',
              fontSize: 18.sp,
            ),
          ],
        ),
        const Gap(10),
        SizedBox(
          height: AppConstant.deviceHeight(context) / 3.5,
          width: AppConstant.deviceWidth(context),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                CustomNavigation.navigateTo(
                    context, BookDetailsScreen(bookModel: list[index]));
              },
              child: SizedBox(
                width: AppConstant.deviceWidth(context) / 2.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: AppConstant.deviceHeight(context) / 4.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            list[index].volumeInfo.imageLinks.thumbnail,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Gap(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            list[index].volumeInfo.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(IconlyBroken.heart),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            separatorBuilder: (context, index) => const Gap(15),
            itemCount: list.length,
          ),
        ),
      ],
    );
  }
}

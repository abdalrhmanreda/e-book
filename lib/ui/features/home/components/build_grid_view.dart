import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/core/components/custom_navigatation.dart';
import 'package:e_book/ui/features/book_details/screens/book_details.dart';
import 'package:e_book/ui/features/library/controller/lib_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gap/gap.dart';

import '../../../../core/constant/app_constant.dart';

class BuildGridView extends StatelessWidget {
  BuildGridView(
      {super.key,
      required this.list,
      this.shrinkWrap,
      this.scrollPhysics,
      required this.childAspectRatio});
  final List list;
  bool? shrinkWrap;
  ScrollPhysics? scrollPhysics;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: shrinkWrap!,
      physics: scrollPhysics,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
      ),
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
                height: AppConstant.deviceHeight(context) / 4,
                margin: const EdgeInsets.all(8),
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
                    onPressed: () {
                      LibCubit.get(context).addToFav(bookModel: list[index]);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      itemCount: list.length,
    );
  }
}

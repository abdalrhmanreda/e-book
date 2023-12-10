import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gap/gap.dart';

import '../../../../core/constant/app_constant.dart';

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .66,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: SizedBox(
            width: AppConstant.deviceWidth(context) / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: AppConstant.deviceHeight(context) / 4,
                  margin: EdgeInsets.all(8),
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
        itemCount: list.length,
      ),
    );
  }
}

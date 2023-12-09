import 'package:e_book/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../../../config/routes/routes_path.dart';
import '../../../../../core/cache/hive_cache.dart';
import '../../../../../core/components/custom_navigatation.dart';
import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import 'on_boarding_item.dart';
import 'on_boarding_item_content/on_boarding_item_content.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  List<OnBoardingItemContent> getItems(BuildContext context) {
    return [
      OnBoardingItemContent(
        title: S.of(context).onBoardingTitle1,
        description: S.of(context).onBoardingDescription1,
        image: Assets.onBoardingOnBoarding1,
      ),
      OnBoardingItemContent(
        title: S.of(context).onBoardingTitle2,
        description: S.of(context).onBoardingDescription2,
        image: Assets.onBoardingOnBoarding2,
      ),
      OnBoardingItemContent(
        title: S.of(context).onBoardingTitle3,
        description: S.of(context).onBoardingDescription3,
        image: Assets.onBoardingOnBoarding3,
      ),
    ];
  }

// Usage
  PageController pageController = PageController();

  bool isLast = false;
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 25,
        vertical: MediaQuery.of(context).size.height / 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
              controller: pageController,
              itemCount: getItems(context).length,
              itemBuilder: (context, index) => OnBoardingItem(
                onBoardingItemContent:
                    getItems(context)[index], //getItems(context)[index], ,
                context: context,
              ),
            ),
          ),
          const Gap(15),
          CircularStepProgressIndicator(
            totalSteps: getItems(context).length,
            currentStep: pageIndex,
            stepSize: 1,
            selectedColor: const Color(AppColors.kPrimaryColor),
            unselectedColor: const Color(AppColors.kLoginWithGoogleColor),
            padding: 0,
            width: 75.w,
            height: 65.h,
            selectedStepSize: 10,
            roundedCap: (_, __) => true,
            child: IconButton(
              icon: const Icon(
                IconlyBroken.arrowRight2,
                size: 28,
              ),
              onPressed: () {
                print(pageIndex);
                if (isLast) {
                  HiveCache.saveData(key: 'onBoarding', value: true)
                      .then((value) {
                    CustomNavigation.navigateByNamedTo(
                        context, RoutePath.login);
                  });
                } else {
                  setState(() {
                    pageIndex++;
                  });

                  pageController.nextPage(
                      duration: const Duration(milliseconds: 750),
                      curve: Curves.fastEaseInToSlowEaseOut);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onPageChanged(index) {
    if (index == getItems(context).length - 1) {
      setState(() {
        isLast = true;
      });
    } else {
      setState(() {
        isLast = false;
      });
    }
  }
}

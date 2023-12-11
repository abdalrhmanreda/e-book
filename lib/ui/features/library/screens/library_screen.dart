import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_book/core/components/animated_loading_indector.dart';
import 'package:e_book/core/components/custom_divider.dart';
import 'package:e_book/core/constant/app_constant.dart';
import 'package:e_book/ui/features/library/controller/lib_cubit.dart';
import 'package:e_book/ui/features/search/components/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipe_to/swipe_to.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LibCubit, LibState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: ConditionalBuilder(
            condition: state is! LoadingState,
            builder: (context) => ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => SwipeTo(
                child: buildSearchListViewItem(
                    context: context,
                    bookModel: LibCubit.get(context).fav[index]),
                onRightSwipe: (va) {
                  LibCubit.get(context).favBooksId.removeAt(index);
                  LibCubit.get(context).removeFromFav(
                      id: LibCubit.get(context).favBooksId[index]);
                },
              ),
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: myDivider(AppConstant.deviceWidth(context), 2),
              ),
              itemCount: LibCubit.get(context).fav.length,
            ),
            fallback: (BuildContext context) =>
                LibCubit.get(context).fav.isEmpty
                    ? const Center(child: Text('No Fav Yet'))
                    : const AnimatedLoadingIndector(),
          ),
        );
      },
    );
  }
}

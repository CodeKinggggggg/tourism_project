import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/common/widget/loading/circular_loading.dart';
import 'package:tourism_http/src/features/wish_list/presentation/provider/wish_list_provider.dart';
import 'package:tourism_http/src/features/wish_list/presentation/widget/wish_list_gridview.dart';

class WishListPage extends ConsumerWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncWishList = ref.watch(fetchWishListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('위시리스트'),
      ),
      body: asyncWishList.when(
        error: (e, _) => const SizedBox.shrink(),
        loading: () => const CustomCircularLoading(),
        data: (wishList) => wishList.isEmpty
            ? const Center(
                child: Text(
                  '위시리스트가 없어요 :(',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              )
            : SingleChildScrollView(
                controller: ScrollController(),
                child: WishListGridView(wishList: wishList),
              ),
      ),
    );
  }
}

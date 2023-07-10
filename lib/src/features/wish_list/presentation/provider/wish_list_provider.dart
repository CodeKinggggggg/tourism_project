import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/wish_list/domain/provider/wish_list_provider.dart';

// GET - Future Provider
final fetchWishListProvider = FutureProvider.autoDispose((ref) async {
  final repository = ref.watch(wishListRepositoryProvider);
  return repository.fetchWishList();
});

// POST - Future Provider
final addWishListProvider = FutureProvider.autoDispose
    .family((ref, GalleryListModel galleryListModel) async {
  final repository = ref.watch(wishListRepositoryProvider);
  return repository.addWishList(galleryListModel);
});

// DELETE - Future Provider
final removeWishListProvider =
    FutureProvider.autoDispose.family((ref, String id) async {
  final repository = ref.watch(wishListRepositoryProvider);
  return repository.removeWishList(id);
});

// 위시리스트 여부 확인 - Future Provider
final isWishListProvider = StateProvider.autoDispose.family((ref, String id) {
  final repository = ref.watch(wishListRepositoryProvider);
  return repository.checkIsWishList(id);
});

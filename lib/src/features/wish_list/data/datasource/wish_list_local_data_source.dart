import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/wish_list/domain/model/wish_list_model.dart';

// 위시리스트 로컬 데이터소스 인터페이스
abstract class WishListDatasource {
  Future addWishList(GalleryListModel galleryModel);

  Future removeWishList(String id);

  Future<List<WishListModel>> fetchWishList();

  bool checkIsWishList(String id);
}

class WishListLocalDatasource implements WishListDatasource {
  @override
  Future addWishList(GalleryListModel galleryModel) async {
    final wishListBox = Hive.box<WishListModel>('wishList');
    final WishListModel wishListModel = WishListModel(
      galContentId: galleryModel.galContentId,
      galTitle: galleryModel.galTitle,
      galWebImageUrl: galleryModel.galWebImageUrl,
      galPhotographyMonth: galleryModel.galPhotographyMonth,
      galPhotographyLocation: galleryModel.galPhotographyLocation,
      galPhotographer: galleryModel.galPhotographer,
    );
    debugPrint(wishListModel.toString());
    wishListBox.put(wishListModel.galContentId, wishListModel);
  }

  @override
  Future removeWishList(String id) async {
    final wishListBox = Hive.box<WishListModel>('wishList');
    debugPrint(id);
    wishListBox.delete(id);
  }

  @override
  Future<List<WishListModel>> fetchWishList() async {
    final wishListBox = Hive.box<WishListModel>('wishList');
    final List<WishListModel> wishList = wishListBox.values.toList();
    return wishList;
  }

  @override
  bool checkIsWishList(String id) {
    final wishListBox = Hive.box<WishListModel>('wishList');
    final bool isWishList = wishListBox.containsKey(id);
    // 위시리스트 등록 ? true : false
    return isWishList;
  }
}

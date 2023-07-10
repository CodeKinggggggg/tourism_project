import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/wish_list/domain/model/wish_list_model.dart';

/// 전체 위시리스트 받기 - fetchWishList
/// 위시리스트 추가 - addWishList
/// 위시리스트 제거 - removeWishList
/// 위시리스트 여부 확인 - checkIsWishList
abstract class WishListRepository {
  Future addWishList(GalleryListModel galleryModel);

  Future removeWishList(String id);

  Future<List<WishListModel>> fetchWishList();

  bool checkIsWishList(String id);
}

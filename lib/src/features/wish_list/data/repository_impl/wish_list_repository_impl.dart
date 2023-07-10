import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/wish_list/data/datasource/wish_list_local_data_source.dart';
import 'package:tourism_http/src/features/wish_list/domain/model/wish_list_model.dart';
import 'package:tourism_http/src/features/wish_list/domain/repository/wish_list_repository.dart';

class WishListRepositoryImplement implements WishListRepository {
  final WishListDatasource datasource;
  WishListRepositoryImplement(this.datasource);

  @override
  Future addWishList(GalleryListModel galleryModel) async {
    return datasource.addWishList(galleryModel);
  }

  @override
  Future removeWishList(String id) async {
    return datasource.removeWishList(id);
  }

  @override
  Future<List<WishListModel>> fetchWishList() async {
    return datasource.fetchWishList();
  }

  @override
  bool checkIsWishList(String id) {
    return datasource.checkIsWishList(id);
  }
}

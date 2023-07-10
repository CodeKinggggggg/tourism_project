import 'package:tourism_http/src/features/home/data/datasource/gallery_remote_datasource.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/home/domain/repository/gallery_repository.dart';

// 갤러리 API 관련 로직 구현체
class GalleryRepositoryImplement implements GalleryRepository {
  final GalleryDatasource galleryDatasource;
  GalleryRepositoryImplement(this.galleryDatasource);

  @override
  Future<List<GalleryListModel>> fetchGalleryList() async {
    return galleryDatasource.fetchGalleryList();
  }
}

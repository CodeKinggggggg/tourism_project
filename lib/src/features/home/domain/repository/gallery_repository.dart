import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';

/// GET - fetchGalleryList
abstract class GalleryRepository {
  Future<List<GalleryListModel>> fetchGalleryList();
}

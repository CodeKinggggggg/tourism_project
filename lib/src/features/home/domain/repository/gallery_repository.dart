// 인터페이스
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';

abstract class GalleryRepository {
  // 사진 갤러리 리스트로 받기
  Future<List<GalleryListModel>> fetchGalleryList();
}

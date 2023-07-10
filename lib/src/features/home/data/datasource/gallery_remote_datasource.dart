import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';

// remote datasource 인터페이스
abstract class GalleryDatasource {
  Future<List<GalleryListModel>> fetchGalleryList();
}

class GalleryRemoteDatasource implements GalleryDatasource {
  final Dio _dio;
  GalleryRemoteDatasource(this._dio);

  @override
  Future<List<GalleryListModel>> fetchGalleryList() async {
    try {
      final String key = dotenv.env['API_KEY']!;

      final response = await _dio.get(
          'https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1?serviceKey=$key&numOfRows=1000&pageNo=1&MobileOS=ETC&MobileApp=touri&arrange=A&_type=json');
      final data = response.data as Map<String, dynamic>;
      final items = data['response']['body']['items']['item'] as List<dynamic>;

      final List<GalleryListModel> list = [];
      for (var item in items) {
        list.add(GalleryListModel.fromJson(item as Map<String, dynamic>));
      }

      return list;
    } catch (e) {
      // 에러 좀 더 세분화 시키기
      throw Exception('에러');
    }
  }
}

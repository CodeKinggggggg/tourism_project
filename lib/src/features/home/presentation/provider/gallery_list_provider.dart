import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/features/home/domain/provider/gallery_provider.dart';

// 갤러리 리스트 받는 프로바이더
final galleryListProvider =
    FutureProvider.autoDispose.family((ref, int pageNo) async {
  final repository = ref.watch(galleryRepositoryProvider);
  return repository.fetchGalleryList(pageNo);
});

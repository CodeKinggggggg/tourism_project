import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/common/provider/dio_provider.dart';
import 'package:tourism_http/src/features/home/data/datasource/gallery_remote_datasource.dart';
import 'package:tourism_http/src/features/home/data/repository_impl/gallery_repository_impl.dart';
import 'package:tourism_http/src/features/home/domain/repository/gallery_repository.dart';

// Datasource 프로바이더
final galleryDatasourceProvider = Provider<GalleryDatasource>((ref) {
  final dio = ref.watch(dioProvider);
  return GalleryRemoteDatasource(dio);
});

// Repository 프로바이더
final galleryRepositoryProvider = Provider<GalleryRepository>((ref) {
  final datasource = ref.watch(galleryDatasourceProvider);
  return GalleryRepositoryImplement(datasource);
});

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/features/wish_list/data/datasource/wish_list_local_data_source.dart';
import 'package:tourism_http/src/features/wish_list/data/repository_impl/wish_list_repository_impl.dart';
import 'package:tourism_http/src/features/wish_list/domain/repository/wish_list_repository.dart';

// Datasource 프로바이더
final wishtListDatasourceProvider = Provider<WishListDatasource>((ref) {
  return WishListLocalDatasource();
});

// Repository 프로바이더
final wishListRepositoryProvider = Provider<WishListRepository>((ref) {
  final datasource = ref.watch(wishtListDatasourceProvider);
  return WishListRepositoryImplement(datasource);
});

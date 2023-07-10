import 'package:flutter/material.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/home/presentation/screen/detail_gallery_page.dart';
import 'package:tourism_http/src/features/home/presentation/widget/gridview_item.dart';

// 홈페이지의 관광명소 사진 그리드뷰
class HomeGalleryGridView extends StatelessWidget {
  final int pageNo;
  final List<GalleryListModel> galleryList;
  const HomeGalleryGridView({
    super.key,
    required this.pageNo,
    required this.galleryList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return GridviewItem(
          imageUrl: galleryList[index].galWebImageUrl,
          title: galleryList[index].galTitle,
          photographer: galleryList[index].galPhotographer,
          photographyMonth: galleryList[index].galPhotographyMonth,
          onTap: () async => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailGalleryPage(
                galleryModel: galleryList[index],
              ),
            ),
          ),
        );
      },
    );
  }
}

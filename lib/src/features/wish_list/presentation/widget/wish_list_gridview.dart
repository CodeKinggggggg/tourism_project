import 'package:flutter/material.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/home/presentation/screen/detail_gallery_page.dart';
import 'package:tourism_http/src/features/home/presentation/widget/gridview_item.dart';
import 'package:tourism_http/src/features/wish_list/domain/model/wish_list_model.dart';

// 홈페이지의 관광명소 사진 그리드뷰
class WishListGridView extends StatelessWidget {
  final List<WishListModel> wishList;
  const WishListGridView({
    super.key,
    required this.wishList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: wishList.length,
      itemBuilder: (BuildContext context, int index) {
        return GridviewItem(
          imageUrl: wishList[index].galWebImageUrl,
          title: wishList[index].galTitle,
          photographer: wishList[index].galPhotographer,
          photographyMonth: wishList[index].galPhotographyMonth,
          onTap: () async => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailGalleryPage(
                galleryModel: GalleryListModel(
                    galContentId: wishList[index].galContentId,
                    galTitle: wishList[index].galTitle,
                    galWebImageUrl: wishList[index].galWebImageUrl,
                    galPhotographyMonth: wishList[index].galPhotographyMonth,
                    galPhotographyLocation:
                        wishList[index].galPhotographyLocation,
                    galPhotographer: wishList[index].galPhotographer),
              ),
            ),
          ),
        );
      },
    );
  }
}

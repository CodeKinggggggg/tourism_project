import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_http/src/common/constants/app_color.dart';
import 'package:tourism_http/src/common/widget/icon_button/custom_back_button.dart';
import 'package:tourism_http/src/common/widget/text_button/custom_fill_text_button.dart';
import 'package:tourism_http/src/common/widget/text_button/custom_outline_text_button.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/home/presentation/widget/gallery_detail_info_box.dart';

class DetailGalleryPage extends StatefulWidget {
  final GalleryListModel galleryModel;
  const DetailGalleryPage({super.key, required this.galleryModel});

  @override
  State<DetailGalleryPage> createState() => _DetailGalleryPageState();
}

class _DetailGalleryPageState extends State<DetailGalleryPage> {
  late bool isWishList;

  @override
  void initState() {
    super.initState();
    isWishList = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              child: isWishList
                  ? const Icon(
                      CupertinoIcons.bookmark_fill,
                      color: PRIMARY_COLOR,
                    )
                  : const Icon(CupertinoIcons.bookmark),
              onTap: () async {
                setState(() {
                  isWishList = !isWishList;
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 제품 사진
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.network(
              widget.galleryModel.galWebImageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          GalleryDetailInfoBox(
            title: widget.galleryModel.galTitle,
            location: widget.galleryModel.galPhotographyLocation,
            photographer: widget.galleryModel.galPhotographer,
            photographyMonth: widget.galleryModel.galPhotographyMonth,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
        child: isWishList
            ? CustomOutlineTextButton(
                w: MediaQuery.of(context).size.width,
                h: 55,
                content: '위시리스트에 저장됨',
                onTap: () async {
                  setState(() {
                    isWishList = !isWishList;
                  });
                },
                color: DARK_GREY_COLOR,
              )
            : CustomFilledTextButton(
                w: MediaQuery.of(context).size.width,
                h: 55,
                content: '위시리스트에 추가',
                onPressed: () async {
                  setState(() {
                    isWishList = !isWishList;
                  });
                },
                backgroundColor: PRIMARY_COLOR,
              ),
      ),
    );
  }
}

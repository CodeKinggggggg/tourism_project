import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/common/constants/app_color.dart';
import 'package:tourism_http/src/common/widget/icon_button/custom_back_button.dart';
import 'package:tourism_http/src/common/widget/text_button/custom_fill_text_button.dart';
import 'package:tourism_http/src/common/widget/text_button/custom_outline_text_button.dart';
import 'package:tourism_http/src/features/home/domain/model/gallery_list_model.dart';
import 'package:tourism_http/src/features/home/presentation/widget/gallery_detail_info_box.dart';
import 'package:tourism_http/src/features/wish_list/presentation/provider/wish_list_provider.dart';

class DetailGalleryPage extends ConsumerStatefulWidget {
  final GalleryListModel galleryModel;
  const DetailGalleryPage({super.key, required this.galleryModel});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DetailGalleryPageState();
}

class _DetailGalleryPageState extends ConsumerState<DetailGalleryPage> {
  late bool isWishList;
  late final String id;

  @override
  void initState() {
    super.initState();
    id = widget.galleryModel.galContentId;
    isWishList = ref.read(isWishListProvider(id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: isWishList
                ? InkWell(
                    child: const Icon(
                      CupertinoIcons.bookmark_fill,
                      color: PRIMARY_COLOR,
                    ),
                    onTap: () async {
                      ref.read(removeWishListProvider(id));
                      setState(() {
                        isWishList = !isWishList;
                      });
                    },
                  )
                : InkWell(
                    child: const Icon(CupertinoIcons.bookmark),
                    onTap: () async {
                      ref.read(addWishListProvider(widget.galleryModel));
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
                  ref.read(removeWishListProvider(id));

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
                  ref.read(addWishListProvider(widget.galleryModel));
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

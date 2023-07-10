import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tourism_http/src/common/widget/loading/circular_loading.dart';
import 'package:tourism_http/src/features/home/presentation/provider/gallery_list_provider.dart';
import 'package:tourism_http/src/features/home/presentation/widget/home_gallery_gridview.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int pageNo = 0;
  final itemsPerPage = 6;

  @override
  Widget build(BuildContext context) {
    final asyncGalleryList = ref.watch(galleryListProvider);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset('assets/app_logo/touri.png'),
        ),
        leadingWidth: MediaQuery.of(context).size.width * 0.15,
      ),
      body: asyncGalleryList.when(
        error: (e, _) => const SizedBox.shrink(),
        loading: () => const CustomCircularLoading(),
        data: (galleryList) => Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: PageView.builder(
                itemCount: (galleryList.length / 6).ceil(),
                onPageChanged: (index) => setState(() {
                  pageNo = index;
                }),
                itemBuilder: (BuildContext context, int pageIndex) {
                  final startIndex = pageIndex * itemsPerPage;
                  final endIndex =
                      (startIndex + itemsPerPage) > galleryList.length
                          ? galleryList.length
                          : (startIndex + itemsPerPage);
                  final galleryListPerPage =
                      galleryList.sublist(startIndex, endIndex);
                  return HomeGalleryGridView(
                    pageNo: pageNo,
                    galleryList: galleryListPerPage,
                  );
                },
              ),
            ),
            Text('1/167'),
          ],
        ),
      ),
    );
  }
}

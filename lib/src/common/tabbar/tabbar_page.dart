import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_http/src/common/constants/app_color.dart';
import 'package:tourism_http/src/features/home/presentation/screen/home_page.dart';
import 'package:tourism_http/src/features/wish_list/presentation/screen/wish_list_page.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int tabbarIndex = 0;

  void tabListener() {
    setState(() => tabbarIndex = controller.index);
  }

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 2, vsync: this, animationDuration: Duration.zero);
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [HomePage(), WishListPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: PRIMARY_COLOR,
        unselectedItemColor: GREY_COLOR,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) => controller.animateTo(index),
        backgroundColor: WHITE_COLOR,
        currentIndex: tabbarIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house),
            activeIcon: Icon(CupertinoIcons.house_fill),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
            activeIcon: Icon(CupertinoIcons.bookmark_fill),
            label: '위시리스트',
          ),
        ],
      ),
    );
  }
}

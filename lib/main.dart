import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tourism_http/src/common/constants/app_name.dart';
import 'package:tourism_http/src/common/splash/splash_page.dart';
import 'package:tourism_http/src/common/theme/app_theme.dart';
import 'package:tourism_http/src/features/wish_list/domain/model/wish_list_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/config/api.env');
  await Hive.initFlutter();
  Hive.registerAdapter<WishListModel>(WishListModelAdapter());
  await Hive.openBox<WishListModel>("wishList");

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    // 앱 종료 시 Hive 닫기
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: AppThemeData.appTheme,
      home: const SplashPage(),
    );
  }
}

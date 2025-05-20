import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import 'package:get/get.dart';
import 'package:elevo/utils/colors.dart';

import 'app/routes/app_pages.dart';
import 'languages.dart';

/*void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}*/
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await dependencyInjection();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp( URide(locale: 'en',));
}
class URide extends StatelessWidget {
  final String locale;
  const URide({super.key,required this.locale});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints) {
          return ScreenUtilInit(
            designSize: const Size(390, 844),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                translations: Languages(),
                navigatorObservers: [FlutterSmartDialog.observer],
                locale: Locale(locale),
                builder: (context, child) {
                  return FlutterSmartDialog(child: child);
                },
                // builder: FlutterSmartDialog.init(),
                title: 'ubadkaabtv',
                theme: ThemeData(
                  scaffoldBackgroundColor: AppColors.backgroundColor,
                  primaryColor: AppColors.primaryColor,
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: AppColors.primaryColor,
                    brightness: Brightness.light,
                  ),
                  unselectedWidgetColor: AppColors.primaryColor,
                  useMaterial3: true,
                  // fontFamily: 'Poppins',
                  fontFamily: 'Poppins',
                  // textTheme: GoogleFonts.poppinsTextTheme(),
                ),
                initialRoute: AppPages.INITIAL,
                getPages: AppPages.routes,
              );
            },
          );
        }
    );
  }
}

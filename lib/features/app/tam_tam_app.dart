import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routing/app_router.dart';
import '../../core/theming/theme_manager.dart';

class TamTamApp extends StatelessWidget {
  const TamTamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.getAppTheme(),
          routerConfig: AppRouter.createRouter(),
        );
      },
    );
  }
}

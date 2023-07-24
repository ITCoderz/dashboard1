import 'package:flutter/material.dart';
import 'package:gap_cure_dashboard/routes/go_routes.dart';
import 'package:gap_cure_dashboard/utils/theme/theme_data.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const GapCureDashBoard());
}

class GapCureDashBoard extends StatelessWidget {
  const GapCureDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gap Cure',
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData.themeData,
      routerConfig: GoRouterHelperClass.router,
    );
  }
}



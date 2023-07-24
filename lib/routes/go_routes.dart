import 'package:go_router/go_router.dart';
import '../screens/dashboard/view/dashboard_screen.dart';
import '../utils/constants/constant_strings.dart';

class GoRouterHelperClass {
  GoRouterHelperClass._();

  static final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: ConstantStrings.dashBoardRouteName,
        path: ConstantStrings.dashBoardScreenRoute,
        builder: ((context, state) => const DashboardScreen()),
      ),
    ],
  );
}

import 'package:auto_route/annotations.dart';
import '../../../alerts/alert_screen.dart';
import '../../../dashboard/presentation/dashboard_screen.dart';
import '../../../splash/presentation/splash.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AdaptiveRoute(page: SplashScreen, initial: true),
    AdaptiveRoute(page: DashboardScreen, path: '/dashboard'),
    AdaptiveRoute(page: AlertScreen, path: '/alerts'),

  ],
)
class $AppRouter {}

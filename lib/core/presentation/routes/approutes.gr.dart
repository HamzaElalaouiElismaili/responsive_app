// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:responsive_app/alerts/alert_screen.dart' as _i3;
import 'package:responsive_app/dashboard/presentation/dashboard_screen.dart'
    as _i2;
import 'package:responsive_app/splash/presentation/splash.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
        opaque: true,
      );
    },
    DashboardScreen.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardScreen(),
        opaque: true,
      );
    },
    AlertScreen.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.AlertScreen(),
        opaque: true,
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i4.RouteConfig(
          DashboardScreen.name,
          path: '/dashboard',
        ),
        _i4.RouteConfig(
          AlertScreen.name,
          path: '/alerts',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i4.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardScreen extends _i4.PageRouteInfo<void> {
  const DashboardScreen()
      : super(
          DashboardScreen.name,
          path: '/dashboard',
        );

  static const String name = 'DashboardScreen';
}

/// generated route for
/// [_i3.AlertScreen]
class AlertScreen extends _i4.PageRouteInfo<void> {
  const AlertScreen()
      : super(
          AlertScreen.name,
          path: '/alerts',
        );

  static const String name = 'AlertScreen';
}

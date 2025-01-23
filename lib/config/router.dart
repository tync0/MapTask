import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prodata/map/presentation/view/map_view.dart';

final class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final homeTabNavigatorKey = GlobalKey<NavigatorState>();

  final GoRouter goRouter = GoRouter(
    initialLocation: '/map',
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/map',
        builder: (context, state) => AppMapView(),
      ),
    ],
  );
}

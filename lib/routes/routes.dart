part of 'index.dart';

abstract class Routes {
  static final RouteObserver<Route> observer = RouteObservers();
  static final List<String> history = [];

  static const main = 'main';
  static const login = 'login';
  static const goodsDetail = 'goods_detail';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter config = GoRouter(
    // debugLogDiagnostics: !kReleaseMode,
    initialLocation: '/',
    observers: [observer],
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        name: main,
        pageBuilder: (context, state) => CupertinoPage(
          name: state.uri.toString(),
          key: state.pageKey,
          child: const MainPage(),
        ),
      ),
      GoRoute(
        path: '/$goodsDetail',
        name: goodsDetail,
        pageBuilder: (context, state) => CupertinoPage(
          name: state.uri.toString(),
          key: state.pageKey,
          child: const GoodsDetailPage(),
        ),
      ),
    ],
  );
}

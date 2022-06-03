import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_flutter/screen/detail/DetailScreen.dart';
import 'package:sample_flutter/screen/settings/SettingsScreen.dart';

import 'screen/home/HomeScreen.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,
    title: 'GoRouter Example',
  );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: "home",
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(title: 'Flutter Demo Home Page')
        ,
        routes: [
          GoRoute(
            name: "settings",
            path: 'settings',
            builder: (BuildContext context, GoRouterState state) =>
              const SettingsScreen()
            ,
          ),
          GoRoute(
            name: "detail",
            path: "detail/:pid",
            builder: (BuildContext context, GoRouterState state) {
              final String id = state.params['pid']!;
              return DetailScreen(pid: id);
            },
          )
        ]
      ),
    ],
    debugLogDiagnostics: true,
  );
}

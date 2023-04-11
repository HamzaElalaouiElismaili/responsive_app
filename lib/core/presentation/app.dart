import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../gen/fonts.gen.dart';
import '../shared/providers.dart';
import 'utils/strings.dart';

class App extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: StringsManager.appName,
      theme: ThemeData(fontFamily: FontFamily.nunito,),
      builder: (context, child) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, child!),
        defaultScale: true,
        breakpoints: const[
          ResponsiveBreakpoint.resize(360, name: MOBILE),
          ResponsiveBreakpoint.resize(480, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}


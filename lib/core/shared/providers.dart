import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../presentation/routes/approutes.gr.dart';

final appRouterProvider = Provider<AppRouter>(
      (ref) => AppRouter(),
);
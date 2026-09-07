import 'package:flutter/material.dart';

import 'core/services/shared_preference/shared_preference_helper.dart';
import 'di/di.dart';
import 'features/portfolio_content/data/data_sources/portfolio_local_data_source.dart';
import 'marco_portfolio_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Preferences must be ready before DI, because the data source reads from
  // them synchronously the moment a cubit is created.
  await SharedPrefHelper().instantiatePreferences();
  configureDependencies();

  // Seeds on first launch only; later launches respect whatever is stored,
  // including content deleted in debug.
  await getIt<PortfolioLocalDataSource>().seedIfEmpty();

  runApp(const MarcoPortfolioApp());
}

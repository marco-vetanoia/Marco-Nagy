import 'package:injectable/injectable.dart';

import '../core/services/shared_preference/shared_preference_helper.dart';

/// Third-party / hand-built singletons that injectable can't construct itself.
@module
abstract class RegisterModule {
  @lazySingleton
  SharedPrefHelper get sharedPrefHelper => SharedPrefHelper();
}

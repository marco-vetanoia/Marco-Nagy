import 'package:flutter/widgets.dart';

import '../localization/lang_keys.dart';
import 'extension/context_extensions.dart';

class Validators {
  const Validators._();

  static final RegExp _email = RegExp(
    r'^[\w.!#$%&’*+/=?^`{|}~-]+@[\w-]+(?:\.[\w-]+)+$',
  );

  static String? required(BuildContext context, String? value) {
    if (value == null || value.trim().isEmpty) {
      return context.translate(LangKeys.validationRequired);
    }
    return null;
  }

  static String? email(BuildContext context, String? value) {
    final missing = required(context, value);
    if (missing != null) return missing;
    if (!_email.hasMatch(value!.trim())) {
      return context.translate(LangKeys.validationInvalidEmail);
    }
    return null;
  }

  static String? message(BuildContext context, String? value) {
    final missing = required(context, value);
    if (missing != null) return missing;
    if (value!.trim().length < 10) {
      return context.translate(LangKeys.validationMessageTooShort);
    }
    return null;
  }

  static String? number(BuildContext context, String? value) {
    final missing = required(context, value);
    if (missing != null) return missing;
    if (num.tryParse(value!.trim()) == null) {
      return context.translate(LangKeys.fieldNumberInvalid);
    }
    return null;
  }
}

// all valedators are static methods
import 'package:movis_app/core/helpers/app_regex.dart';

class Validators {
  // email validator
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty || !AppRegex.isEmail(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  // password validator
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty || !AppRegex.isPassword(value)) {
      return "Please enter a valid password";
    }
    return null;
  }
}

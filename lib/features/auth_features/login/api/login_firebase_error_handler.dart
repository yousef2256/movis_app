import 'package:movis_app/features/auth_features/login/api/login_api_conestents.dart';

class FirebaseErrorHandler {
  static String handleFirebaseAuthError(String? errorCode) {
    switch (errorCode) {
      case FirebaseErrorMessages.keyNetworkError:
        return FirebaseErrorMessages.networkError;
      case FirebaseErrorMessages.keyUserNotFound:
        return FirebaseErrorMessages.userNotFound;
      case FirebaseErrorMessages.keyWrongPassword:
        return FirebaseErrorMessages.wrongPassword;
      case FirebaseErrorMessages.keyEmailAlreadyInUse:
        return FirebaseErrorMessages.emailAlreadyInUse;
      case FirebaseErrorMessages.keyWeakPassword:
        return FirebaseErrorMessages.weakPassword;
      case FirebaseErrorMessages.keyInvalidEmail:
        return FirebaseErrorMessages.invalidEmail;
      case FirebaseErrorMessages.keyTooManyRequests:
        return FirebaseErrorMessages.tooManyRequests;
      case FirebaseErrorMessages.keyOperationNotAllowed:
        return FirebaseErrorMessages.operationNotAllowed;
      default:
        return FirebaseErrorMessages.unknownError;
    }
  }
}

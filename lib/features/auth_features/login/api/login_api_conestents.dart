class FirebaseErrorMessages {
  // Firebase error codes and corresponding messages
  static const String keyNetworkError = 'network-request-failed';
  static const String keyUserNotFound = 'user-not-found';
  static const String keyWrongPassword = 'wrong-password';
  static const String keyEmailAlreadyInUse = 'email-already-in-use';
  static const String keyWeakPassword = 'weak-password';
  static const String keyInvalidEmail = 'invalid-email';
  static const String keyTooManyRequests = 'too-many-requests';
  static const String keyOperationNotAllowed = 'operation-not-allowed';

  // User-friendly messages
  static const String networkError =
      'A network error has occurred. Please try again.';
  static const String userNotFound = 'No user found for the provided email.';
  static const String wrongPassword = 'The password you entered is incorrect.';
  static const String emailAlreadyInUse =
      'This email address is already in use.';
  static const String weakPassword = 'The password is too weak.';
  static const String invalidEmail = 'The email address is not valid.';
  static const String tooManyRequests =
      'Too many requests. Please try again later.';
  static const String operationNotAllowed = 'This operation is not allowed.';
  static const String unknownError =
      'An unknown error occurred. Please try again.';
}

class ValidationException implements Exception {
  String message;

  ValidationException(this.message);
}

class Validation {
  static void validate(String username, String password) {
    if (username.isEmpty) {
      throw ValidationException('username is empty');
    } else if (password.isEmpty) {
      throw ValidationException('password is empty');
    }
  }
}

void main() {
  try {
    Validation.validate("", "");
  } on ValidationException catch (e, stackTrace) {
    print('validation error: ${e.message}');
    print('stack trace: ${stackTrace.toString()}');
  } catch (e, stackTrace) {
    print('Exception caught: ${e.toString()} }');
    print('stack trace: ${stackTrace.toString()}');
  } finally {
    print('all process cleared');
  }
}

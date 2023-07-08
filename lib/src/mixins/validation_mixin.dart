class ValidationMixin {
  String validateEmail(value) {
    if (!value!.contains('@')) {
      return 'Pleave enter a valid email';
    }

    return '';
  }

  String validatePassword(value) {
    if (value!.length < 4) {
      return 'Password must be at least 4 characters';
    }

    return '';
  }
}

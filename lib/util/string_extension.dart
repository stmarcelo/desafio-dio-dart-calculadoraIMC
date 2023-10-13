class StringExtension {
  static bool isEmptyOrNull(String? string) {
    return (string == null || string.trim().isEmpty);
  }
}

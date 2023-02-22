
extension StringExtentions on String {
  /// This is method Muhammadyusuf
  bool validPassword() {
    var regex = RegExp(r'(([A-Z]+)|([a-z]+)|([0-9]+)|([!@#%&]+)){8,}');
    return regex.hasMatch(this);
  }
}
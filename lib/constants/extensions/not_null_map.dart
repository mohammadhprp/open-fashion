extension NotNullMap on Map {
  Map get toNotNull {
    Map newMap = this;
    newMap.removeWhere(
      (key, value) => key == null || value == null,
    );
    return newMap;
  }
}

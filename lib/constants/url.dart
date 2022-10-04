class Url {
  //* uncomment [domain] [api] [host] [storage] for live server
  /*
  static String domain = 'araamsho.ir';
  static String api = 'https://api.$domain/v1';
  static String host = 'http://$domain';
  static String storage = '$host/public';
  */

  //* comment [host] [api] [storage] for live server

  static String host = "http://10.0.2.2:8000";
  static String api = '$host/v1';
  static String storage = '$host/storage';

  static String image = "$storage/images";
  static String assets = '$storage/assets';

  static String userAvatar = "$image/user_avatar";
}

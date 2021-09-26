class EndPoint {
  static final String server = 'http://6fcc-180-253-165-84.ngrok.io/';
  static final String api = server + 'api/';
  static final String login = api + 'login';
  static final String getArtikel = api + 'artikel';
  static final String postForum = api + 'forum/post';
  static String detail(var id) => api + 'forum/$id';
}

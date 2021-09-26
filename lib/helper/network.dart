class EndPoint {
  static final String server = 'http://fe19-125-166-116-124.ngrok.io/';
  static final String api = server + 'api/';
  static final String login = api + 'login';
  static final String getArtikel = api + 'artikel';
  static final String listForum = api + 'forum/all';
  static String detail(var id) => api + 'forum/$id';
}

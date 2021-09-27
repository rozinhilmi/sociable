class EndPoint {
  static final String server = 'https://techify.reach.my.id/';
  static final String api = server + 'api/';
  static final String login = api + 'login';
  static final String getArtikel = api + 'artikel';
  static final String postForum = api + 'forum/post';
  static String detail(var id) => api + 'forum/$id';
}

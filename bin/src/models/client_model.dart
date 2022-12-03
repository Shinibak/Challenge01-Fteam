class ClientModel {
  String login;
  int id;
  String nodeId;
  String avatarUrl;
  String gravatarId;
  String url;
  String htmlUrl;
  String followersUrl;
  String followingUrl;
  String gistsUrl;
  String starredUrl;
  String subscriptionsUrl;
  String organizationsUrl;
  String reposUrl;
  String eventsUrl;
  String receivedEventsUrl;
  String type;
  bool siteAdmin;
  String name;
  String company;
  String blog;
  String location;
  String email;
  String hireable;
  String bio;
  String twitterUsername;
  int publicRepos;
  int publicGists;
  int followers;
  int following;
  String createdAt;
  String updatedAt;

  ClientModel(
      {required this.login,
      required this.id,
      required this.nodeId,
      required this.avatarUrl,
      required this.gravatarId,
      required this.url,
      required this.htmlUrl,
      required this.followersUrl,
      required this.followingUrl,
      required this.gistsUrl,
      required this.starredUrl,
      required this.subscriptionsUrl,
      required this.organizationsUrl,
      required this.reposUrl,
      required this.eventsUrl,
      required this.receivedEventsUrl,
      required this.type,
      required this.siteAdmin,
      required this.name,
      required this.company,
      required this.blog,
      required this.location,
      required this.email,
      required this.hireable,
      required this.bio,
      required this.twitterUsername,
      required this.publicRepos,
      required this.publicGists,
      required this.followers,
      required this.following,
      required this.createdAt,
      required this.updatedAt});

  static ClientModel fromJson(Map<String, dynamic> json) {
    return ClientModel(
        id: json['id'],
        login: json['login'],
        nodeId: json['node_id'],
        avatarUrl: json['avatar_url'],
        gravatarId: json['gravatar_id'],
        url: json['url'],
        htmlUrl: json['html_url'],
        followersUrl: json['followers_url'],
        followingUrl: json['following_url'],
        gistsUrl: json['gists_url'],
        starredUrl: json['starred_url'],
        subscriptionsUrl: json['subscriptions_url'],
        organizationsUrl: json['organizations_url'],
        reposUrl: json['repos_url'],
        eventsUrl: json['events_url'],
        receivedEventsUrl: json['received_events_url'],
        type: json['type'],
        siteAdmin: json['site_admin'],
        name: json['name'],
        company: json['company'] ?? '',
        blog: json['blog'],
        location: json['location'],
        email: json['email'],
        hireable: json['hireable'] ?? '',
        bio: json['bio'] ?? '',
        twitterUsername: json['twitter_username'] ?? '',
        publicRepos: json['public_repos'],
        publicGists: json['public_gists'],
        followers: json['followers'],
        following: json['following'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at']);
  }

  String toJson() {
    return '$login $id';
  }
}

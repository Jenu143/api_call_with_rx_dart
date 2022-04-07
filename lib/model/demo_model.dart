class DemoModel {
  late bool status;
  late Data data;

  DemoModel({required this.status, required this.data});

  DemoModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
  late AdId adId;
  late Keyword keyword;
  late List<MoreApp> moreApp;
  late List<PlayGame> playGame;

  Data({
    required this.adId,
    required this.keyword,
    required this.moreApp,
    required this.playGame,
  });

  Data.fromJson(Map<String, dynamic> json) {
    adId = AdId.fromJson(json['ad_id']);
    keyword = Keyword.fromJson(json['keyword']);
    if (json['more_app'] != null) {
      moreApp = <MoreApp>[];
      json['more_app'].forEach((v) {
        moreApp.add(MoreApp.fromJson(v));
      });
    }
    if (json['play_game'] != null) {
      playGame = <PlayGame>[];
      json['play_game'].forEach((v) {
        playGame.add(PlayGame.fromJson(v));
      });
    }
  }
}

class AdId {
  late String admobInterstitial;
  late String adType;
  late String facebookInterstitial;
  late String facebookBanner;
  late String admobBanner;
  late String admobNative;
  late String admobOpenad;
  late String facebookReward;
  late String facebookNative;
  late String admobReward;

  AdId(
      {required this.admobInterstitial,
      required this.adType,
      required this.facebookInterstitial,
      required this.facebookBanner,
      required this.admobBanner,
      required this.admobNative,
      required this.admobOpenad,
      required this.facebookReward,
      required this.facebookNative,
      required this.admobReward});

  AdId.fromJson(Map<String, dynamic> json) {
    admobInterstitial = json['admob_interstitial'];
    adType = json['ad_type'];
    facebookInterstitial = json['facebook_interstitial'];
    facebookBanner = json['facebook_banner'];
    admobBanner = json['admob_banner'];
    admobNative = json['admob_native'];
    admobOpenad = json['admob_openad'];
    facebookReward = json['facebook_reward'];
    facebookNative = json['facebook_native'];
    admobReward = json['admob_reward'];
  }
}

class Keyword {
  late String privacy;
  late String version;

  Keyword({required this.privacy, required this.version});

  Keyword.fromJson(Map<String, dynamic> json) {
    privacy = json['privacy'];
    version = json['version'];
  }
}

class MoreApp {
  late String appname;
  late String appurl;
  late bool active;
  late String imageurl;

  MoreApp(
      {required this.appname,
      required this.appurl,
      required this.active,
      required this.imageurl});

  MoreApp.fromJson(Map<String, dynamic> json) {
    appname = json['appname'];
    appurl = json['appurl'];
    active = json['active'];
    imageurl = json['imageurl'];
  }
}

class PlayGame {
  late String appurl;
  late bool active;
  late String imageurl;

  PlayGame(
      {required this.appurl, required this.active, required this.imageurl});

  PlayGame.fromJson(Map<String, dynamic> json) {
    appurl = json['appurl'];
    active = json['active'];
    imageurl = json['imageurl'];
  }
} 

class ApiResponseModel<T> {
  late int? status;
  T? data;

  ApiResponseModel({this.data, this.status});

  ApiResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    status = json['status'];
  }
}

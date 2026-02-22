// movie_list_model.dart

/// Model representing a TV show
class TvSongs {
  String name;
  String permalink;
  String endDate;
  String network;
  String imageThumbnailPath;
  String status;

  TvSongs({
    this.name = '',
    this.permalink = '',
    this.endDate = '',
    this.network = '',
    this.imageThumbnailPath = '',
    this.status = '',
  });

  factory TvSongs.fromJson(Map<String, dynamic> json) {
    return TvSongs(
      name: json['name'] ?? '',
      permalink: json['permalink'] ?? '',
      endDate: json['endDate'] ?? '',
      network: json['network'] ?? '',
      imageThumbnailPath: json['imageThumbnailPath'] ?? '',
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'permalink': permalink,
      'endDate': endDate,
      'network': network,
      'imageThumbnailPath': imageThumbnailPath,
      'status': status,
    };
  }
}

/// Model representing a list of TV shows
class SongsListModel {
  String total;
  int page;
  int pages;
  List<TvSongs> tvShow;

  SongsListModel({
    this.total = '',
    this.page = 0,
    this.pages = 0,
    List<TvSongs>? tvShow,
  }) : tvShow = tvShow ?? [];

  factory SongsListModel.fromJson(Map<String, dynamic> json) {
    var list = <TvSongs>[];
    if (json['tv_shows'] != null && json['tv_shows'] is List) {
      list = (json['tv_shows'] as List)
          .map((e) => TvSongs.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return SongsListModel(
      total: json['total'] ?? '',
      page: json['page'] ?? 0,
      pages: json['pages'] ?? 0,
      tvShow: list,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'page': page,
      'pages': pages,
      'tv_shows': tvShow.map((e) => e.toJson()).toList(),
    };
  }
}

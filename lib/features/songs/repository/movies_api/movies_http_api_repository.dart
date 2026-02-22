import 'package:bloc_clean_coding/configs/app_url.dart';
import 'package:bloc_clean_coding/core/network/network_api_services.dart';

import '../../../../models/song_model.dart';

import 'movies_api_repository.dart';

/// Implementation of [MoviesApiRepository] for making HTTP requests to fetch movies list.
class MoviesHttpApiRepository implements MoviesApiRepository {
  final _apiServices = NetworkApiService();

  /// Fetches the list of movies from the API.
  ///
  /// Returns a [SongsListModel] representing the list of movies.
  @override
  Future<SongsListModel> fetchMoviesList() async {
    final response = await _apiServices.fetchGetApiResponse(AppUrl.baseUrl);
    return SongsListModel.fromJson(response);
  }
}

import 'package:bloc_clean_coding/configs/app_url.dart';
import 'package:bloc_clean_coding/core/network/network_api_services.dart';

import '../../../../models/song_model.dart';

import 'songs_api_repository.dart';

/// Implementation of [SongsApiRepository] for making HTTP requests to fetch songs list.
class SongsHttpApiRepository implements SongsApiRepository {
  final _apiServices = NetworkApiService();

  /// Fetches the list of songs from the API.
  ///
  /// Returns a [SongsListModel] representing the list of songs.
  @override
  Future<SongsListModel> fetchSongsList() async {
    final response = await _apiServices.fetchGetApiResponse(AppUrl.baseUrl);
    return SongsListModel.fromJson(response);
  }
}

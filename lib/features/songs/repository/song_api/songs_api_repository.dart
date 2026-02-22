import '../../../../models/song_model.dart';

/// Abstract class defining methods for songs API repositories.
abstract class SongsApiRepository {
  /// Fetches the list of songs from the API.
  ///
  /// Returns a [SongsListModel] representing the list of songs.
  Future<SongsListModel> fetchSongsList();
}

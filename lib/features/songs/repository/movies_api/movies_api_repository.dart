import '../../../../models/song_model.dart';

/// Abstract class defining methods for movies API repositories.
abstract class MoviesApiRepository {
  /// Fetches the list of movies from the API.
  ///
  /// Returns a [SongsListModel] representing the list of movies.
  Future<SongsListModel> fetchMoviesList();
}

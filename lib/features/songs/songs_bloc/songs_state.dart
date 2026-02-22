part of 'songs_bloc.dart';

class SongsState extends Equatable {
  const SongsState({
    required this.songsList,
  });

  final ApiResponse<SongsListModel> songsList;

  SongsState copyWith({
    ApiResponse<SongsListModel>? songsList,
  }) {
    return SongsState(
      songsList: songsList ?? this.songsList,
    );
  }

  @override
  List<Object?> get props => [songsList];
}

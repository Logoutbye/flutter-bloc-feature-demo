import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_clean_coding/core/response/api_response.dart';

import 'package:bloc_clean_coding/features/songs/repository/song_api/songs_api_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../models/song_model.dart';

part 'songs_event.dart';
part 'songs_state.dart';

class SongsBloc extends Bloc<SongsEvent, SongsState> {
  SongsApiRepository songsApiRepository;
  SongsBloc({required this.songsApiRepository})
      : super(SongsState(songsList: ApiResponse.loading())) {
    on<SongsFetch>(fetchSongsListApi);
  }

  Future<void> fetchSongsListApi(
      SongsFetch event, Emitter<SongsState> emit) async {
    await songsApiRepository.fetchSongsList().then((response) {
      emit(state.copyWith(
        songsList: ApiResponse.completed(response),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        songsList: ApiResponse.error(error.toString()),
      ));
    });
  }
}

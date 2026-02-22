part of 'songs_bloc.dart';

abstract class SongsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SongsFetch extends SongsEvent {}

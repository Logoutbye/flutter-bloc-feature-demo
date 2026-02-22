// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:bloc_clean_coding/core/response/status.dart';
import 'package:bloc_clean_coding/features/songs/songs_bloc/songs_bloc.dart';
import 'package:bloc_clean_coding/l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/widgets/network_image_widget.dart';
import '../../../main.dart';
import 'widgets.dart';

/// A widget representing the screen displaying a list of movies.
class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _HomeViewState();
}

/// The state of the [MoviesScreen] widget.
class _HomeViewState extends State<MoviesScreen> {
  late SongsBloc songsBloc;

  @override
  void initState() {
    super.initState();
    songsBloc = SongsBloc(songsApiRepository: getIt());
    // Dispatches the [PostFetched] event to trigger fetching songs data
  }

  @override
  void dispose() {
    songsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(AppLocalizations.of(context)!.popularShows),
        actions: const [
          LogoutButtonWidget(), // Widget for logout button
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: BlocProvider(
        create: (_) => songsBloc..add(SongsFetch()),
        child: BlocBuilder<SongsBloc, SongsState>(
          buildWhen: (previous, current) =>
              previous.songsList != current.songsList,
          builder: (BuildContext context, state) {
            switch (state.songsList.status) {
              case Status.loading:
                return const Center(child: CircularProgressIndicator());
              case Status.error:
                return const MoviesErrorWidget(); // Widget for displaying error state
              case Status.completed:
                if (state.songsList.data == null) {
                  // Widget for displaying no data found message
                  return Text(AppLocalizations.of(context)!.noDataFound);
                }
                final movieList = state.songsList.data!;

                return ListView.builder(
                    itemCount: movieList.tvShow.length,
                    itemBuilder: (context, index) {
                      final tvShow = movieList.tvShow[index];
                      return Card(
                        child: ListTile(
                          leading: NetworkImageWidget(
                            borderRadius: 5,
                            imageUrl: tvShow.imageThumbnailPath.toString(),
                          ), // Widget for displaying network image
                          title: Text(
                              tvShow.name.toString()), // Title of the movie
                          subtitle: Text(tvShow.network
                              .toString()), // Network of the movie
                          trailing: Text(
                              tvShow.status.toString()), // Status of the movie
                        ),
                      );
                    });
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}

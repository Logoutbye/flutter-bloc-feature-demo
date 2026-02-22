import 'package:bloc_clean_coding/features/songs/songs_bloc/songs_bloc.dart';
import 'package:bloc_clean_coding/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/widgets/internet_exception_widget.dart';

/// A widget for displaying error messages related to movies.
class MoviesErrorWidget extends StatelessWidget {
  const MoviesErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsBloc, SongsState>(
      buildWhen: (previous, current) => previous.songsList != current.songsList,
      builder: (context, state) {
        // Checking if the error message indicates no internet connection
        if (state.songsList.message.toString() ==
            AppLocalizations.of(context)!.noInternetConnection) {
          // Displaying InternetExceptionWidget if there's no internet connection
          return InterNetExceptionWidget(onPress: () {
            // Dispatching PostFetched event to trigger fetching songs data
            context.read<SongsBloc>().add(SongsFetch());
          });
        } else {
          // Displaying error message as a clickable text if it's not related to internet connection
          return InkWell(
            onTap: () {
              // Dispatching PostFetched event to trigger fetching songs data
              context.read<SongsBloc>().add(SongsFetch());
            },
            child: Center(
              child: Text(state.songsList.message.toString()),
            ),
          );
        }
      },
    );
  }
}

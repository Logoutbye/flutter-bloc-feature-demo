import 'package:bloc_clean_coding/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'splash_services.dart';

/// A widget representing the splash screen of the application.
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

/// The state of the [SplashView] widget.
class _SplashViewState extends State<SplashView> {
  final SplashServices splashServices =
      SplashServices(); // Instance of SplashServices for handling splash screen logic

  @override
  void initState() {
    super.initState();
    // Calls the [checkAuthentication] method from [SplashServices] to handle authentication logic
    splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          // Displays the localized text for the splash screen
          AppLocalizations.of(context)!.splashScreen,
          style: Theme.of(context)
              .textTheme
              .displayMedium, // Applies the displayMedium text style from the current theme
        ),
      ),
    );
  }
}

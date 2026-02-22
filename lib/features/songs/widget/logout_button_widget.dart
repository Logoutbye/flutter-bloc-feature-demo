import 'package:bloc_clean_coding/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../../../configs/routes/routes_name.dart';

import '../../../shared/storage/local_storage.dart';

/// A widget representing the logout button.
class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LocalStorage localStorage = LocalStorage();

        localStorage.clearValue('token').then((value) {
          localStorage.clearValue('isLogin');
          // Navigating to the login screen after clearing token and isLogin value
          Navigator.pushNamed(context, RoutesName.login);
        });
      },
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.logout,
        ),
      ),
    );
  }
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get aCompleteValidEmailExamplejoegmailcom =>
      'A complete, valid email e.g. joe@gmail.com';

  @override
  String get pleaseEnsureTheEmailEnteredIsValid =>
      'Please ensure the email entered is valid';

  @override
  String get passwordShouldbeatleast_characterswithatleastoneletterandnumber =>
      'Password should be at least 8 characters with at least one letter and number';

  @override
  String get passwordRequirements =>
      'Password must be at least 8 characters and contain at least one letter and number';

  @override
  String get submit => 'Submit';

  @override
  String get submitting => 'Submitting...';

  @override
  String get splashScreen => 'Splash screen';

  @override
  String get popularShows => 'Popular Shows';

  @override
  String get noDataFound => 'No Data Found';

  @override
  String get noInternetConnection => 'No Internet Connection';

  @override
  String get logout => 'Logout';
}

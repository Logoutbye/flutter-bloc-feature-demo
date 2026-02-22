// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String get email => 'Correo electrónico';

  @override
  String get password => 'Contraseña';

  @override
  String get login => 'Acceso';

  @override
  String get aCompleteValidEmailExamplejoegmailcom =>
      'Un correo electrónico completo y válido, por ejemplo, joe@gmail.com';

  @override
  String get pleaseEnsureTheEmailEnteredIsValid =>
      'Por favor, asegúrese de que el correo electrónico ingresado sea válido';

  @override
  String get passwordShouldbeatleast_characterswithatleastoneletterandnumber =>
      'La contraseña debe tener al menos 8 caracteres con al menos una letra y un número';

  @override
  String get passwordRequirements =>
      'La contraseña debe tener al menos 8 caracteres y contener al menos una letra y un número';

  @override
  String get submit => 'Enviar';

  @override
  String get submitting => 'Enviando...';

  @override
  String get splashScreen => 'Pantalla de bienvenida';

  @override
  String get popularShows => 'Shows Populares';

  @override
  String get noDataFound => 'No se encontraron datos';

  @override
  String get noInternetConnection => 'Sin conexión a internet';

  @override
  String get logout => 'Cerrar sesión';
}

import 'package:bloc_clean_coding/configs/app_url.dart';
import 'package:bloc_clean_coding/core/network/base_api_services.dart';
import 'package:bloc_clean_coding/core/network/network_api_services.dart';


import '../../../models/user_model.dart';
import 'auth_api_repository.dart';

/// Implementation of [AuthApiRepository] for making HTTP requests to the authentication API.
class AuthHttpApiRepository implements AuthApiRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  /// Sends a login request to the authentication API with the provided [data].
  ///
  /// Returns a [UserModel] representing the user data if the login is successful.
  @override
  Future<UserModel> loginApi(dynamic data) async {
    dynamic response = await _apiServices.postApiResponse(AppUrl.loginInEmail, data);
    return UserModel.fromJson(response);
  }
}

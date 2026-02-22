
/// User model without Freezed
class UserModel {
  String token;
  String error;

  /// Constructor with default values
  UserModel({
    this.token = '',
    this.error = '',
  });

  /// Factory constructor to create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'] ?? '',
      error: json['error'] ?? '',
    );
  }

  /// Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'error': error,
    };
  }

  /// Optional: copyWith method similar to Freezed
  UserModel copyWith({String? token, String? error}) {
    return UserModel(
      token: token ?? this.token,
      error: error ?? this.error,
    );
  }

  @override
  String toString() => 'UserModel(token: $token, error: $error)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          runtimeType == other.runtimeType &&
          token == other.token &&
          error == other.error;

  @override
  int get hashCode => token.hashCode ^ error.hashCode;
}
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required int id,
    required String name,
    required String body,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get photo {
    return "https://avatars.dicebear.com/api/avataaars/$id.jpg";
  }
}

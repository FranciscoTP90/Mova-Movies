import 'dart:developer';

import 'package:flutter/foundation.dart';

import '../../core/core.dart';
import 'datasources.dart';
import '../../domain/entities/user.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

List<User> _parseUsers(String jsonData) {
  List<dynamic> decodedResp = json.decode(jsonData);
  final users = decodedResp
      .map((e) => User(id: e["id"], name: e["name"], body: e["body"]))
      .toList();
  return users;
}

class JsonDataSource implements ILocalDataSource {
  @override
  Future<List<User>> getUsersComments() async {
    try {
      String jsonData = await rootBundle.loadString(AssetLocation.usersFile);

      return compute(_parseUsers, jsonData);
    } catch (e) {
      log("getUsersComments: $e");
      rethrow;
    }
  }
}

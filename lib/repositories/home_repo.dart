import 'package:dio/dio.dart';
import 'package:firstapp/services/network.dart';

class homeRepository {
  Future<Response> getRepositories() async {
    return await Network.dio.get('categories');
  }
}

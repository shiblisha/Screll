import 'dart:convert';

import 'package:http/http.dart';

import '../screllModel.dart';
import 'api_client.dart';

class ScrellApi {
  ApiClient apiClient = ApiClient();

  Future<ScrellModel> getCategory(
      ) async {

    String path = 'https://dummyjson.com/products/categories';

    Response response =
    await apiClient.invokeAPI(path, 'GET12',null);

    return ScrellModel.fromJson(jsonDecode(response.body));
  }
}
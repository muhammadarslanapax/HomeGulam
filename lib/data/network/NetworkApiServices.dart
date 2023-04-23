import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../app_exception.dart';
import 'BaseApiServices.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;
    try {
      Response respone =
      await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(respone);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } catch (e) {
      debugPrint(e.toString());
    }
    return responseJson;
  }

  @override
  Future postApiResponse(String url, dynamic data) async{
    dynamic responseJson;
    try {
      Response respone =
      await post(Uri.parse(url), body: data).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(respone);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } catch (e) {
      debugPrint(e.toString());
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnAuthorizeException(response.body.toString());
      default:
        throw FetchDataException(
            'Error accure the communicate with server ${response.statusCode.toString()}');
    }
  }
}
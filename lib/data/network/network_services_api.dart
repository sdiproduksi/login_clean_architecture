import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:login_clean_architecture/data/exception/app_exception.dart';
import 'package:login_clean_architecture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

      if(response == 200){

      }
    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException {
      throw FetchDataException('Time out try again');
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    dynamic jsonResponse;
    try {
      final response = await http.post(Uri.parse(url), body: data).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

      if(response == 200){

      }
    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException {
      throw FetchDataException('Time out try again');
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);

      if(response == 200){

      }
    }on SocketException {
      throw NoInternetException('');
    }on TimeoutException {
      throw FetchDataException('Time out try again');
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch(response){
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnauthorizedException();
      case 500:
        throw FetchDataException('Error communicating with server' + response.statusCode.toString());
    }
  }
}
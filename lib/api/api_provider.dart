import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:pet/api/endPoints.dart';
import 'package:pet/api/server_error.dart';
import 'package:pet/main.dart';
import 'package:pet/ui/map/locations.dart';

class ApiProvider{
  static ApiProvider apiProvider = ApiProvider.internal();

  ApiProvider.internal();

  factory ApiProvider() {
    return apiProvider;
  }
  Future<GetAllTurfResponse> getAllTurfList() async {
    //try {

      Response res = await dio.get(
        EndPoints.GET_ALL_TURF,options: Options()

      );

      return GetAllTurfResponse.fromJson(res.toString());
    // } catch (error) {
    //   String message = "";
    //   if (error is DioError) {
    //     ServerError e = ServerError.withError(error: error);
    //     message = e.getErrorMessage();
    //   } else {
    //     message = "Please try again later!";
    //   }
    //   print("Exception occurred: $message stackTrace: $error");
    //   return GetAllTurfResponse( message: message);
    // }
  }
}
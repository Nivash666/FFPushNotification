import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetcategoriesCall {
  static Future<ApiCallResponse> call({
    int? vendorId,
  }) async {
    final ffApiRequestBody = '''
{
  "vendor_id": $vendorId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getcategories',
      apiUrl:
          'https://fqdfiyyvvxljwqrlcgow.supabase.co/rest/v1/rpc/get_distinct_categories',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetdistinctCall {
  static Future<ApiCallResponse> call({
    int? vendorId,
  }) async {
    final ffApiRequestBody = '''
{
  "vendor_id": $vendorId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getdistinct',
      apiUrl:
          'https://fqdfiyyvvxljwqrlcgow.supabase.co/rest/v1/rpc/get_subcategories_by_vendor',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? categoryjson(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List<String>? namecategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].subcategory_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idcategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].subcategory_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

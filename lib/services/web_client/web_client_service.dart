import 'dart:convert';

import 'package:food_client/home/home_web_client_service.dart';
import 'package:food_client/profile/profile_controller.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

class WebClientService
    implements HomeWebClientService, ProfileWebClientService {
  final Uri url = Uri.parse(
    'https://www.hellofresh.de/gw/api/recipes/632c3d7c683f4229430e351b',
  );
  final Map<String, String> headers = <String, String>{
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzE0OTk5OTMsImlhdCI6MTY2ODg3MDI1MCwiaXNzIjoic2VuZiIsImp0aSI6IjE4MjBiZmVmLTYwM2ItNDEyZS05Yzg4LTU1ZDQwMjMyYzhkYiJ9.ym3BOCZAuL52rcMzfL_1zKOQbxcuVp7dPgnknif72tQ',
  };

  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllRecipes() =>
      TaskEither<Exception, String>.tryCatch(
        () async => await http.read(url, headers: headers),
        (final Object error, final _) => Exception(
          'Failed to fetch recipes: $error',
        ),
      ).flatMap(
        (final String response) =>
            TaskEither<Exception, Map<String, Object?>>.tryCatch(
          () => jsonDecode(response),
          (final Object error, final _) => Exception(
            'Failed to parse response: $error',
          ),
        ),
      );

  @override
  TaskEither<Exception, Map<String, dynamic>> fetchAllThings() {
    throw UnimplementedError();
  }
}

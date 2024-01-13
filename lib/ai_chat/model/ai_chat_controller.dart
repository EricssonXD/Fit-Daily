import 'package:dio/dio.dart';

var dio = Dio();

class AIChatAPI {
  // API URL of openai
  static const String API_URL =
      'https://api.openai.com/v1/engines/davinci/completions';

  // API Key of openai
  static const String API_KEY = 'my api key';

  // Function to get response from openai
  static Future<String> getResponse(String text) async {
    // Create request body
    Map<String, dynamic> requestBody = {
      'prompt': text,
      'max_tokens': 150,
      'temperature': 0.9,
      'top_p': 1,
      'n': 1,
      'stream': false,
      'logprobs': null,
      'stop': ['\n']
    };

    // Create request headers
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $API_KEY'
    };

    // Send request to openai
    var response = await dio.post(
      API_URL,
      options: Options(headers: requestHeaders),
      data: requestBody,
    );

    // Return response
    return response.data;
  }
}

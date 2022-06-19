import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  String endpoint = "api.thecatapi.com";
  getRandomCatPhoto() async {
    final parameters = {
      "api_key": "59c3b5f7-a495-46db-9352-31d36afc5d20",
    };
    final uri = Uri.https(endpoint, "/v1/images/search", parameters);
    final response = await http.get(uri);
    return Right(response.body);
  }
}

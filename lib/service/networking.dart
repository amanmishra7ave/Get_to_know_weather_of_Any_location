import 'dart:convert';
import 'package:http/http.dart' as http;

class NetwoekHelper {
  final Uri apiUrl; // change the type to Uri

  NetwoekHelper(String url) : apiUrl = Uri.parse(url); // parse the url as a Uri

  Future<dynamic> getData() async {
    http.Response response = await http.get(apiUrl); // use the apiUrl as a Uri
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

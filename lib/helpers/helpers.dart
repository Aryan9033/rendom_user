import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rendom_user/model/rendom.dart';

class RendomAPIHelpers {
  RendomAPIHelpers._();

  static final RendomAPIHelpers rendomAPIHelpers = RendomAPIHelpers._();

  final String BASE_URL = "https://randomuser.me/api/";

  Future<Rendome?> fetchSinglerendomData() async {
    http.Response res = await http.get(Uri.parse(BASE_URL));

    if (res.statusCode == 200) {
      Map<String, dynamic> decodedData = jsonDecode(res.body);

      Rendome rendome = Rendome.formJSON(json: decodedData);

      return rendome;
    } else {
      return null;
    }
  }
}

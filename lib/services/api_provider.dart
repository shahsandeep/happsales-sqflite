import 'dart:convert';
import 'package:happsales_asignment/constants/api_constant.dart';
import 'package:happsales_asignment/models/db_contact_model.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  List<ContactDBModel> contacts = [];
  Future<List<ContactDBModel>> getContacts() async {
    final response = await http.post(Uri.parse(ApiConstants().baseUrl),
        headers: {
          'Accept': 'application/json',
          "content-type": "application/json",
          'Authorization': ApiConstants().bearerToken,
        },
        body: jsonEncode({"UserData": "1611", "SearchText": ""}));
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      contacts.clear();
      for (Map<String, dynamic> i in data) {
        contacts.add(ContactDBModel.fromJson(i));
      }
      return contacts;
    } else {
      throw Exception('Not Working');
    }
  }
}

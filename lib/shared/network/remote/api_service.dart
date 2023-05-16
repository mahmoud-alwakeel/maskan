// property_model.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Property> fetchProperty() async {
  final response = await http
      .get(Uri.parse('https://localhost:7046/Property/GetProperty/19'));

  if (response.statusCode == 200) {
    return Property.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load property: ${response.statusCode}');
  }
}

class Property {
  final String sellerName;
  final List<dynamic> seller;
  final Map dealType;
  final Map properties;

  const Property({
    required this.sellerName,
    required this.seller,
    required this.dealType,
    required this.properties,

  });

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      sellerName: json['dealType']['properties'][0]['seller']['sellerName'],
      seller : json['dealType']['properties'][0]['seller'],
      properties: json['dealType']['properties'],
      dealType: json['dealType'],
    );
  }
}




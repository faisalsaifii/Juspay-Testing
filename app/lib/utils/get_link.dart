import 'dart:convert';
import 'package:http/http.dart' as http;
import './data.dart';

dynamic getPaymentLink(amount) async {
  var url = Uri.parse('$serverUrl/order');
  var response = await http.post(url, body: {"amount": "1.0"});
  orderId = json.decode(response.body)["order_id"];
  return json.decode(response.body)["payment_links"]["web"] as String;
}

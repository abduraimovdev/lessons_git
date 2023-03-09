
import 'dart:convert';
import 'dart:io';

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var httpClient = HttpClient();
  var request = await httpClient.getUrl(url);
  var response = await request.close();
  var data = await utf8.decoder.bind(response).toList();
  print('Response ${response.statusCode}: $data');
  httpClient.close();

  Map<String, Object> map = json.decode(data.first) as Map<String, Object>;
  print(map);
}
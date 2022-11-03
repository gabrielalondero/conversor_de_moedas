import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const request = 'https://api.hgbrasil.com/finance?format=json-cors&key=8b0b20cf';

class CounterRepository { 
    
    Future<Map> getData() async{
      http.Response response = await http.get(Uri.parse(request));
      return json.decode(response.body);
    }
         
}
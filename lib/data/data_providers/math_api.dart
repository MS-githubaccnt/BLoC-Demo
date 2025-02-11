import 'dart:math';
import 'package:bloc_demo/data/models/math.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
class MathApi{
  final random=Random();
  
  final String baseUrl=dotenv.env['URL']??"";
  Future <Mathfact?> fetchMathFact()async{
    try{
      int randomNumber=random.nextInt(2000);
      final Url="$baseUrl$randomNumber/math";
      final response=await http.get(Uri.parse(Url),
      headers: {
        "Content-type":"application/json",
        'x-rapidapi-key':dotenv.env['API_KEY']??'',
        'x-rapidapi-host': 'numbersapi.p.rapidapi.com'
      });
      if(response.statusCode==200){
      final data=json.decode(response.body);
      final fact=Mathfact.fromJson(data);
      print(fact);
      return fact;}
      return null;
    }catch(e){
      print(e);
    }
    return null;
  }
}
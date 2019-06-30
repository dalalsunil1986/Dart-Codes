import 'dart:io';
import 'dart:convert';

void main() async{

  var request = await HttpClient().getUrl(Uri.parse('https://swapi.co/api/people/1'));

     var response = await request.close(); 

    //print(response);
       await for (var contents in response.transform(Utf8Decoder())) {

     print(contents);
  }
}

import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

Future<Map> getData() async {
    http.Response response = await http.get(request);
    //print(json.decode(response.body));
    return json.decode(response.body);
}

const request = 'https://api.codenation.dev/v1/challenge/dev-ps/generate-data?token=02bb4223ace02495fd82a5e73053f7772b14a5dd';

void main() async{

    //Cria uma variável com o arquivo Json
    var codigo = await getData();

    //Valores do arquivo Json
    int numero_casas = codigo["numero_casas"];
    String cifrado = codigo["cifrado"];

    print(numero_casas);
    print(codigo);
    decoder(cifrado);
}

void decoder(String code){
    List<String> Dicio = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "w", "y", "z"]; 

    for(int i=0; i<code.length; i++){
        var atual = code[i];
        print(atual);
    }
}


import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

//Link do arquivo Json
const request = 'https://api.codenation.dev/v1/challenge/dev-ps/generate-data?token=02bb4223ace02495fd82a5e73053f7772b14a5dd';

//Faz a requisição da api e retorna os dados
Future<Map> getData() async {
    http.Response response = await http.get(request);
    //print(json.decode(response.body));
    return json.decode(response.body);
}

void main() async{
    //Cria uma variável com o arquivo Json
    var codigo = await getData();

    //Valores do arquivo Json
    int numero_casas = codigo["numero_casas"];
    String cifrado = codigo["cifrado"];

    print (decoder(cifrado, numero_casas));
}

// Decodificador
String decoder(String code, int casas){
    List<String> Dicio = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]; 
    String result ='';
    //Percorre a caractere por caractere na string
    for(int i=0; i<code.length; i++){
        var atual = code[i];
        
        //Verifica se o atual eh uma letra
        if(Dicio.contains(atual)){
            int index = Dicio.indexOf(atual);
            int newIndex = index - casas;
            if(newIndex<0){ //Eh necessário reiniciar o alfabeto
                while(newIndex<0){
                    newIndex = 26 + newIndex;
                }
                result = result + Dicio[newIndex];
            }else { //Nao eh necessário reiniciar o alfabeto
                result = result + Dicio[newIndex];
            } 
        } else {  //Nao eh uma letra
            result = result + atual;
        }
    }
    return result;
}


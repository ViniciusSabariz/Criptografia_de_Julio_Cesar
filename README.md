# Criptografia de Julio Cesar

Das Criptografias mais curiosas na história da humanidade podemos citar a criptografia utilizada pelo grande líder militar romano Júlio César para comunicar com os seus generais. Essa criptografia se baseia na substituição da letra do alfabeto avançado um determinado número de casas.

## Exemplo
*Considerando o número de casas = 3*
**Normal:** a ligeira raposa marrom saltou sobre o cachorro cansado
**Cifrado:** d oljhlud udsrvd pduurp vdowrx vreuh r fdfkruur fdqvdgr

# Regras
1. As mensagens serão convertidas para minúsculas tanto para a criptografia quanto para descriptografia.
2. No nosso caso os números e pontos serão mantidos, ou seja: 
> *1a.a* **=>** *1d.d*.

## Linguagem
Utilizaremos [Dart](https://dart.dev/) para a realização do desafio.

# Desafio
## Descrição
Você deve usar o número de casas para decifrar o texto e atualizar o arquivo JSON, no campo decifrado. O próximo passo é gerar um resumo criptográfico do texto decifrado usando o algoritmo **sha1** e atualizar novamente o arquivo JSON. OBS: você pode usar qualquer biblioteca de criptografia da sua linguagem de programação favorita para gerar o resumo sha1 do texto decifrado.

## API
https://api.codenation.dev/v1/challenge/dev-ps/generate-data?token=

## Token
> 02bb4223ace02495fd82a5e73053f7772b14a5dd

## Submição
Deve submeter o arquivo atualizado para correção via POST para a API:
> https://api.codenation.dev/v1/challenge/dev-ps/submit-solution?token=

## Observação
A API espera um arquivo sendo enviado como multipart/form-data, como se fosse enviado por um formulário HTML, com um campo do tipo file com o nome answer. Considere isso ao enviar o arquivo.

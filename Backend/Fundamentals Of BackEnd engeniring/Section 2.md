## Request Response
- Client send a request
- Server parses the request (precisa saber onde o request começa e onde termina)
- Server process the request
- Server send the response to the client
- Client parses the response and consume

#### Where is it used
- Web, HTTP, DNS, SSH
- Remote procedure call (RPC)
- SQL and DataBase Protocols (você manda uma query pro servidor)
- APIs (REST \[Representational State transfer\], SOAP \[Single Object Access Protocol \], GraphQL)

#### Anatomy of Request and Response
- Uma estrutura de request é definida por ambos cliente e e servidor

``` js
GET/ HTTP/ 1.1
Headers
<CRLF>
BODY
```

## Synchronous vs Async

### Sync I/O
- Caller manda um request e fica travado (espera a té a resposta)
- Context switch, ocorre quando o computador percebe que o request fica travado e decide executar outras as coisas enquanto espera a resposta.
- Quando o computador receber de volta o request com pedidos, tudo é desbloquado.

### Async I/O
- Caller manda request
- Caller consegue continuar sua execução até conseguir uma resposta
- O called faz:
	- Checa se a response já está pronta para ser consumida (epoll)
	- Receiver chama um callback quando termina

## Push
- Fast response
#### Request response não é sempre o ideal
- Cliente quer notificação em tempo real
- o modelo de push é bom para os casos: 
	-


#### Anatomia de um push
- Cliente conecta no servidor
- Servidor envia dados para o cliente 
- Cliente não precisa fazer nenhum request
- protocolo deve ser bidirecional
- Usado por RabbitMQ

#### Pros and cons
- Pros
	- Real time
- Const
	-  Cliente deve estar online
	- Cliente talvez não consiga lidar com os sucessivos push
	- requer um protocolo biderecional
	- Polling é preferivel para clientes com PC fraco

## Short Polling
- Muito comum em requests que demoram muito tempo para processar 

#### Quando request/response não é o ideal
- Request leva muito tempo para processar
	- Uploading the um video
- O backend quer enviar notificações
	- Um usuário acabou de logar

#### O que é um short Polling
- O cliente envia um request
- O server responde imediatamente com um handle (id) - o backend nessa etapa pode fazer o que quiser, pode processar o request agora, no futuro, colocar numa fila etc
- O server continua a processar o request
- O cliente usa o handle para checar o status (o request ja foi processado? o request ja foi processado? o request ja foi processado? o request ja foi processado? )
- Ao invés de enviar um request grande enviamos vários request pequenos (por isso o nome de poll)
- O ponto chave aqui é que quando o backend terminar de processar o request, ele não vai enviar a resposta logo em seguida para o client. O backend irá esperar pelo proxima checagem do handle do client (o request ja foi processado? Sim, então toma)

#### Pros and Cons
- Pros
	- Simples
	- Bom para requests demorados
	- Client pode desconectar no meio do processo
- Cons
	- Muito chatty (tagarela), por isso não escala muito bem
	- Network bandwith
	- Desperdicio de rescursos do backend


## Long Polling

#### Quando um request/reponse & polling não é o ideal
- Um request demora muito tempo a ser processado
- O backend quer mandar notificações
- Short polling é bom, mas é muito tagarela (chatty)
- Long polling resolve esses problemas

#### O que é long polling
- Cliente manda um request
- Server responsde o request com um handle imediatamente
- Server continua processando o request
- Client usa o handle para checar o status
- Server não responde até obter uma resposta
- Como temos um handle, podemos desconectar e o client é menos tagarela (chatty)
- Algumas variações possuem erro de timeout

#### Pros & Cons
- Pros
	-  Menos tagarela e backend friednly
	- Cliente pode permanecer conectado
- Cons
	- Não é real time

## Server sent events
Um request, mas a reposta é muito muito longa (streaming, a resposta não tem fim)

#### Limitações do Request/Response
- Vanilla request/Response não é o ideal para fazer um sistema de notificações (lembra do push model)
- O cliente quer notificação em tempo real
- O modelo push funciona, mas é restritivo 
- Server sent events funciona com Request/Response (não precisamos trabalhar com websocker)
- O design foi feito para HTTP

#### O que é um server sent event
- Um response tem um começo e fim
- Client manda um request 
- Server manda eventos logicos como part da response
- O server nunca escreve o fim da response
- Continua sendo um request, mas a response não tem fim
- Cliente faz o parse dessas streams procurando por esses events


#### Server sent events Pros and Cons
- Pros
	- Real time
	- Compativel com request/response
- Cons
	- Client precisa estar online
	- O Client pode não conseguir lidar com a resposta (Imagine o cenario que o cliente desconectou e só processou alguns eventos, o backend precisaria salvar o estado do client quando ele desconectou, mas isso é muito custoso)
	- Polling é preferivel para clients mais leves

## Publish Subscribe
- Client publica para o server e continua
- O Client consume do servidor o pedaço que foi publicado
- One publisher many readers
- Lembrar do exemplo do upload de video no youtube (upload server $\rightleftharpoons$ compress server $\rightleftharpoons$ fomat server ...)


#### Request/Response
- Pros
	- Elegante e simples
	- Escalavel
- Cons
	- Ruim para multiplos recebedores
	- Muito acoplavel
	- Client/Server devem estar sendo executados
	- Encadeamento dos cirtucots pode causar uma quebra (exemplo youtube)

#### Como pub/sub funciona

- Teremos vário publicadores e vário subscribers
- Teremos uma classe chamada de broker
- O broker possui um conjunto de topicos
- Um publicador posta no broker o que acabou de gerar
- Quem escuta um topico do broker consume o que foi postado


#### Pros and Cons
- Pros
	- Escala bem com multiplos subscribers
	- Bom para microserviços
	- Possui baixo acoplamento
	- Funciona enquanto o cliente estiver inativo

- Cons
	- Message deliveray issue (como eu sei que o subscriber recebeu a mensagem)
	- Complexidade
	- Saturação de network

#TODO : Implementar pub/sub

## Multiplexing vs Demultiplexing

Multiplexing
- Merger todos os request em uma só resposta

Demultiplexing
- O contrario de multiplexing

![[Demultiplexing vs multipexing]]

Exemplo do curso foi que o HTTP versão 1 tinhamos 6 conexões, para cada conexão se fazia um request. No entanto, no HTTP versão 2, tinhamos uma coneção, mas faziamos um multiplex dos request para mandar tudo por essa única conexão
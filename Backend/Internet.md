- Global network of computers (they communicate with each other through protocols)
- Fully distributed (is not centralized)


## Data Transfer
- Dois computadores se comunicam enviando entre um e outro
- Tres modos de enviar
	- Eletricidade
	- Luz
	- Radio
### Eletricidade
- Energizado = 1, sem energia = 0
- Suponha que queremos passar um stream de bits, como fazer isso?
	- Usamos um timer, se temos a taxa de 1 bit por segundo. Se queremos enviar um stream de 5 1s, energizamos o fio por 5 segundos

## Bandwith
- Capacidade maxima de um dispositvo transmitir bits
- Usamos o bit rate para medir a largura de banda 
- Bit rate - numero de bits que podem ser enviados durante um periodo de tempo

## Latencey
- Tempo que demora pra um bit sair da origem e chegar no destino

# IP Addresses and DNS
- Dispositivos se comunicam através de protocolos
- Protocolos = conjunto de regras conhecido e padronizado para comunicação entre maquinas
- Todo dispositivo na internet tem um endereço (address)
- IP (internet protocol)
- Estrutura de um IP![[Pasted image 20240909212028.png]]
- DNS (domain name system) - server que cria a assossiação entre IP e um nome (www.balblabal.com)

### DNS Spoofing
- Ataque hacker que consiste em mudar o IP de um site, mas mantendo o nome 

## Packages Routing and Reliabilty
- O caminho de um request não é fixo (não é sempre o mesmo) e também não é direto
- O request é mandado por pacotes, quando todos os pacotes chegam no destino eles são agrupados.
- Computadores especiais (routers) são os responsaveis por enviar os pacotes da origem até o destino (um router pode enviar um pacote para outro router que pode enviar um pacote para outro router ...)
- A rota entre os routers pode mudar dependendo do trafico
- Dado que recebemos alguns pacotes, como saber que já recebemos tudo (100%)?
	- TCP (transmission control protocol) - gerencia o envio e o recebimento de pacotes
	- TCP faz uma chegem se o numero de pacotes de envio bate com o de recebimento
## HTTP and HTML

- URL - uniform resource locator
- HTTP - hyper text transfer protocol (linguagem utilizada para comunicar entre computador/client e servidor)
	- GET request para pegar informação do servidor
	- Se enviarmos GET/login o servidor ira enviar um codigo html da tela de login
	- POST - enviar informação pro servido (enviar um form, busca)
	- Se enviarmos um POST/login estamos enviando a informação que preenchemos no form para o servidor
- Cookie - é como se fosse um cartão ID que fica armazenado na sua maquina
- Cookies são importantes pois facilitam a autenticação de usuário quando uma pagina é atualizada.
- SSL/TLS - Security sockets layer & Transport Layer security. Ambas são canais de segurança para a comunicação entre servidor e usuário


### Encryption and Publick keys
- Chaves simetricas
	- Quando quem envia e quem recebe possui a mesma chave the incriptação
- Chaves assimetricas
	- Chave publica (pode ser substituível) e uma chave particular
- A chave publica pode criptografar qualquer mensagem. Essa criptografica só pode ser quebrada pela private key


### Cybersecurity and Crime
- DDOS - distributed denial of service (overheat serve with a ton of different requests)

## TCP/IP
- Ports: usado para identificar uma aplicação rodando em um dispositivo. Cada aplicação tem uma porta única (dessa forma permitindo o dado ser enviado para o destino correto) 
- Sockets: combinação de IP (maquina) + Port (aplicação), isso representa um endpoint especifico para comunicação. Sockets são utilizados para para estabelecer a conexão entre dispositivos e transferir dados entre aplicações
- 
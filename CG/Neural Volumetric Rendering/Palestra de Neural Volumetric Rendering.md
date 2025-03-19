
Video https://www.youtube.com/watch?v=P8lfU0Z8zhM

A palestra fala sobre NERFS

## Problema
Input: conjunto de imagens calibradas
Output: Representação em uma cena 3D de pontos de vista diferentes

## Componentes Chave

1. Representação volumétrica da cena
2. Função de renderização
3. Otimização através de Analysis-by-Synthesis

### Representação 3D
$$(x, y, z, \theta, \phi) \xrightarrow{F_{\Omega }} (r,g,b, \sigma)$$
Onde 
- $(x, y, z)$ são as posição espaciais
- $(\theta, \phi)$ são as rotações (que dado esses dois angulo descobrimos um ponto na esfera)
- $(r, g, b)$ são as cores
- $\sigma$ é a densidade

#### Plenoptic Function
Essa função tem por objetivo responder a seguinte pergunta: "Qual é o conjunto de todas as coisas que podemos observar". Se tentassemos parametrizar tal função ela se pareceria com algo do tipo.

$$P(\theta, \phi)$$
- Essa função nos fornece a intensidade da luz na rotação $\theta$ e $\phi$
	- Essa função é estática no espaço (não tem uma posição)
	- Essa função faz a média das ondas de luz (por isso é cinza)

$$P(\theta, \phi, \lambda)$$

- Essa função nos fornece a intesidade da luz
	- Vista apenas de um ponto estático no espaço 
	- $\lambda$ é comprimento de onda (nessa representação temos cor)

$$P(\theta, \phi, \lambda, t)$$
- Agora adicionamos o tempo a essa função

$$P(\theta, \phi, \lambda, t, V_{x}, V_{y}, V_{z})$$
- Agora adicionamos a posição

Essa função nos permite representar uma cena 3D, pois temos todas as direções possíveis em todas as direções possíveis ao longo do tempo (além disso temos a cor dos objetos).

Se removermos o tempo e removermos a informção do comprimento de onda e fizermos essa função retornar uma cor teremos

$$P(\theta, \phi, \lambda, t, V_{x}, V_{y}, V_{z}) \rightarrow P(\theta, \phi, V_{x}, V_{y}, V_{z})$$

#### Lightfield/ Lumigraph
- Abordagem para modelar a plenoptic function
- Tirar foto de diversas direções
- Interpolamos os raios para renderizar a cena


#### Conexão entre NeRF e Plenoptic function
- NeRF tem os mesmos input que a função plenoptic
- A única diferença é que na plenoptic function interpretamos um ponto que recebe raios
- Na NeRF o ponto de vista é por fora (o objeto emite varios raio). Logo precisamos integrar ao longo dos raios

![[Pasted image 20250318210747.png]]


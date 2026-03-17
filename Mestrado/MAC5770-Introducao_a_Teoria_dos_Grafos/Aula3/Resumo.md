## Resumo dos Conceitos de Teoria dos Grafos

### Passeios, Trilhas, Caminhos e Ciclos

- Um passeio em um grafo é uma sequência finita não vazia que alterna entre vértices e arestas.
    
- Os vértices inicial e final de um passeio são chamados de origem e término, respectivamente.
    
- O comprimento de um passeio, denotado por $||P||$, é definido pelo seu número de arestas.
    
- Uma trilha é definida como um passeio que não possui arestas repetidas.
    
- Um caminho é um passeio que não possui vértices repetidos.
    
- Um passeio é considerado fechado quando o vértice de origem é igual ao vértice de término.
    
- Um ciclo é uma trilha fechada na qual todos os vértices internos são distintos.
    
- O reverso de um passeio, denotado por $P^{-1}$, é o passeio obtido ao percorrê-lo na ordem inversa.
    

### Conexidade

- Um grafo é conexo se existe um caminho entre todo par de vértices distintos.
    
- Se não existe esse caminho para todo par de vértices, o grafo é chamado de desconexo.
    
- Os componentes de um grafo são os seus subgrafos conexos maximais.
    
- Todo grafo conexo que possui $n\ge1$ vértices tem, no mínimo, $n-1$ arestas.
    

### Distância, Diâmetro, Cintura e Circunferência

- A distância entre dois vértices, denotada por $dist(u,v)$, é o comprimento do caminho mais curto entre eles.
    
- Se não houver caminho entre dois vértices, a distância entre eles é definida como infinito ($\infty$).
    
- O diâmetro de um grafo, ou $diam(G)$, é a maior das distâncias entre quaisquer dois vértices desse grafo.
    
- A cintura de um grafo (girth), denotada por $g(G)$, corresponde ao comprimento do seu menor ciclo.
    
- A circunferência de um grafo é o comprimento do seu maior ciclo.
    
- Se um grafo possui pelo menos um ciclo, sua cintura obedece à relação $g(G)\le2\cdot diam(G)+1$.
    

### Grafos Bipartidos

- Um grafo é classificado como bipartido se, e somente se, não possuir ciclos ímpares.
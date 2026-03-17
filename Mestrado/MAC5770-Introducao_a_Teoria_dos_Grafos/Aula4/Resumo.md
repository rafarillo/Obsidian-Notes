### Resumo dos Conceitos de Teoria dos Grafos

- **Caracterização de Grafos Bipartidos**: Um grafo é classificado como bipartido se, e somente se, ele não contém ciclos ímpares.
    
- **Demonstração da Bipartição**: Se um grafo é bipartido com partições $(X,Y)$, qualquer ciclo deve alternar entre essas partições, garantindo que o comprimento do ciclo seja par. Se o grafo não possui ciclos ímpares, os vértices podem ser particionados em conjuntos $X$ e $Y$ baseados na paridade (par ou ímpar) da distância a um vértice inicial $w$.
    
- **Teorema de Mantel (1907)**: Este teorema estabelece que o número máximo de arestas que um grafo simples de ordem $n$ pode ter, sem formar triângulos, é $\lfloor n^{2}/4\rfloor$. A demonstração matemática deste fato é feita através de indução matemática em $n$.
    
- **Subgrafos Bipartidos Máximos**: O Teorema 1.2 garante que todo grafo simples $G$ possui um subgrafo bipartido contendo pelo menos $|E(G)|/2$ arestas. A demonstração mostra que, ao maximizar as arestas entre duas partições $X$ e $Y$, nenhum vértice pode ter mais vizinhos em sua própria partição do que na partição oposta.
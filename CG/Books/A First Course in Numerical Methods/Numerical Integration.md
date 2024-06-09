Last read page 442
Lendo seção 14.3 (Derivying formulas langrange)

### Lagrange Interpolation(317)
- Definição: Um polinomio de langrange é da forma
$$L_{j} (x_{i})= \begin{equation}
\begin{cases}
0 \text{, se i }\ne \text{j} \\
1 \text{, se i } = \text{j}
\end{cases}
\end{equation} $$
- Seja $y_{i}$ os pontos de amostragem (onde $y_{i}$ corresponde ao ponto na abcissa), o polinomio interpolador de no máximo grau $n$ pode ser escrito como
$$p(x) = \sum_{j=0}^ny_{j}L_{j(x)}$$
- Logo temos que:
  $$p(x_{i}) = \sum_{j=0}^{n}y_{j}L_{j}(x_{i}) = 0 + 0 + \ldots +y_{i}L_{j}(x_{i}) + 0 + \ldots + 0 = y_{i}$$
  - Exemplo: Sejam os pontos $(1, 1)$; $(2, 3)$ e $(4, 3)$, os polinomios interpoladores são
  ![[Pasted image 20240414031744.png]]
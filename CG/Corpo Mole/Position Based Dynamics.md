Maioria das simulações são baseadas no calculo de força
Calcula aceleração -> Calcula velocidade -> Calcula posição

Simuladores rigidy body, determinam a posição através do calculo do impulso. Desta forma, manipula diretamente a velocidade

PBD esconde a camada da velocidade a trabalha imediatamente com as posições.

Physical based animation está preocupada em encontrar algoritimos estáveis, robustos e veloz. Mais ainda, o resultado deve ser visivelmente plausivel

Beneficios
- Mais controle sobre as integrais explicitas e remove tipicos problemas de instabilidade
- Posição dos vertices e partes do objetos podem ser diretamente manipuladas durante a simulação
- Um solver the posição explicita é facil de entender e implementar

$N - \text{Numero de vértice}$
$M - \text{Número de constraints}$
$m_{i} - \text{massa do i-ésimo vértice}$
$x_{i} - \text{posição do i-ésimo vértice}$
$v_{i} - \text{velocidade do i-ésimo vértice}$

As constraints $j \in [1, \ \cdots ,\ M]$ consistem em:
- Cardinalidade $n_{j}$ (????)
- Uma função $C_{j} : \mathbb{R}^{3n_{j}} \to \mathbb{R}$
- Um conjunto de indices $\{ i_{1}, \cdots ,i_{n_{j}}\},\ i_{k} \in [1, \cdots N]$
- Um parametro de stiffness (rigidez) $k_{j} \in [0, \cdots , 1]$
- Uma igualdade ou inequalidade
O parametro $k_{j}$ (rigidez) define a influencia da constraint $j$ 
### Algoritmo

![[Pasted image 20250114073224.png]]
### Solver
Baseado no metodo Gauss-Seidel-type iteration. No entanto, esse metodo é só para lidar com sistemas lineares. Usaremos a ideia do GS de resolver as restrições independemente uma após a outra.

##### Constraint projection
Projetar um conjunto de pontos de acordo com uma constraint significa mover os pontos de tal forma que eles satisfaçam a constraint.

**Constraint de momento linear**

$\sum_{i} m_{i} \Delta p_{i} = 0$

- Onde $\Delta p_{i}$ é o vetor de deslocamento do vertice $i$

**Constraint de momento angular**

$\sum_{i} r_{i} \times m_{i} \Delta p_{i} = 0$

- Onde $r_{i}$ é a distancia de $p_{i}$ até um ponto central arbitrário.


- Essencialmente é um solver para um problema de otimização
- Baseado em equação implicita de euler
$$y_{i+1} = y_{i} + hf(t_{k+1},\ y_{k+1})$$
Dado um sistema de $N$ vertices representamos nossa simulação no passo $t$ como $(x^{t,}v^t)$, onde $x^{t}\in \mathbb{R}^{3N}$ e $v^{t}\in \mathbb{R}^{3N}$ (vetores concatenados de posição e velocidade)

O problema de otimização pode ser escrito como $$x^{t+1} = \arg\min_{x} G(x)$$
onde $$G(x) = \dfrac{1}{2h^{2}}||x-y||^{2_{M}}+ E(x)$$
- $h$ - time step size
- $||.||_{M}$ - operador de norma ponderada pela massa
- $y = x^{t}+ h v^{t}+ h^{2}a_{ext}$
- $a_{ext}$ - aceleração externa (exemplo: gravidade)
- $E(x)$ - energia potencial total avaliada no ponto $x$

$G$ é o que o autor chama de *variational energy*.
Minimizaremos $G$ usando a técnica de otimização *coordinate descent methods* (https://youtu.be/TiiF3VG_ViU)

Como estamos modificando um vértice por vez, o termo $E(x)$ (energia) tem uma relação direta com as forças $F_{i}$ que estão agindo sobre o vértice $i$ (relação de força e energia https://youtu.be/tz4vt4i3ED4).

Definimos portanto, a *local variational energy $G_{i}$* ao redor do vértice $i$ como $$G_{i}(x) = \dfrac{m_{i}}{2h^{2}}||x_{i} - y_{i}||^{2}+ \sum_{j \in F_{i}}E_{j}(x)$$
Note que $G$ não é igual a soma das *local variational energy* ($G(x) \ne \sum_{i=1}G_{i}(x)$), isso ocorre pois a os elementos de força aparecem multiplas vezes nessa soma.
Baseado nisso o VBD atua sobre um único vértice por vez e atualiza a posição minimizando a energia local $$x_{i} = \arg\min_{x_{i}} G(x)$$
e resolvendo o sistema global usando o metodo de Gauss-Seidel iterativo.




## Local System Solver
Usaremos a equação da *local variational energy* pra resolver o sistema, pois além de ser menos custosa que a equação geral (pois tem 3 DOF, visto que fixamos todos os vértices exceto um). Usaremos a derivada de segunda ordem e usar o metodo de newton para minimizar $G_{i}$.
$$H_{i}\Delta x_{i} = f_{i}$$
onde $\Delta x_{i}$ é a mudança de posição, $f_{i}$ é a força total no vértice, calculada usando $$f_{i} = -\dfrac{\partial G_{i}(x)}{\partial x_{i}} = \dfrac{m_{i}}{h^{2}(x_{i} - y_{i})}- \sum_{j \in F_{i}}\dfrac{\partial E_{j}(x)}{\partial x_{i}}$$
e $H_{i} \in \mathbb{R}^{3 \times 3}$ é a matriz Hessiana de $G_{i}$.
$$H_{i} = \dfrac{\partial^{2}G_{i}(x)}{\partial x_{i} \partial x_{i}} = \dfrac{m_{i}}{h^{2}}I + \sum_{j \in F_{i}}\dfrac{\partial^{2}E_{j}(x)}{\partial x_{i} \partial x_{i}}$$
## Damping
Essencial pois previni oscilação excessiva e também melhora a estabilidade da simulação. O autor integrou nas sua equação o modelo de Rayleigh para damping (https://www.youtube.com/watch?v=UJXVOJJ4zYs)
$$H_{i} = \dfrac{m_{i}}{h^{2}}I + \sum_{j \in F_{i}}\dfrac{\partial^{2}E_{j}(x)}{\partial x_{i} \partial x_{i}} + \sum_{j \in F_{i}}\dfrac{k_{d}}{h} \dfrac{\partial^{2}E_{j}(x)}{\partial x_{i} \partial x_{i}}$$
$k_{d}$ - coeficiente de damping
Adicionamos o dumping também na hora de calcular a força
$$f_{i} = \dfrac{m_{i}}{h^{2}(x_{i} - y_{i})}- \sum_{j \in F_{i}}\dfrac{\partial E_{j}(x)}{\partial x_{i}} - \left( \sum_{j \in F_{i}}\dfrac{\partial^{2}E_{j}(x)}{\partial x_{i} \partial x_{i}} \right) (x_{i} - x_{i}^t)$$

## Constraints
Existem dois tipos de constraints unilateral ($C(x) \le 0$) ou bilateral ($C(x) = 0$).
Para o caso bilateral, se um vertex tem sua posição atualizada para um valor em específico simplesmente paramos de atualizar sua posição 

## Colisões
Lidamos com colisão adicionando uma formula de energia quadratica por vértice paseada na profundidade da penetrância $d$ tal que
$$E_{c}(x) = \dfrac{1}{2}k_{c}d^{2}\ \ \mbox{ com } \ \ \ d = \max(0, (x_{b} -x_{a} ) \cdot \hat{n})$$
$k_{c}$ - stifiness collision
$x_{a}$ e $x_{b}$ - pontos de contato
$\hat{n}$ - normal do contato

Existem dois tipos de colisão entre meshes triangulares
- Aresta-Aresta: usamos detecção de colisão continua (CCD)(https://www.youtube.com/watch?v=aE7GA1stIUk). $x_{a}$ e $x_{b}$ correspondem aos pontos de interseção de cada aresta e a normal é a direção entre eles $n = x_{b} - x_{a}$
- Vértice-Triangulo: ou usamos CCD ou DCD. Nesse caso $x_{a}$ é o vértice que está colidindo e $x_{b}$ corresponde é o ponto no triangulo (tanto para CCD ou DCD), $\hat{n}$ é a normal da superfície em $x_{b}$